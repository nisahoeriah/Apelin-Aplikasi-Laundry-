<?php

namespace App\Http\Controllers;

use App\Models\Member;
use App\Models\LogActivity;
use Image;
use Illuminate\Http\Request;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->search;
        $members = Member::when($search, function ($query, $search) {
            return $query->where('nama', 'like', "%{$search}%")
            ->orWhere('tlp', 'like', "%{$search}%");
        })
        ->paginate();

        $members->map(function($row){
            $row->foto = asset("images/{$row->foto}");
            return $row;
            });
        if ($search) {
            $members->appends(['search' => $search]);
        }

        return view('member.index', [
            'members' => $members
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        LogActivity::add('Berhasil Membuat Member');
        return view('member.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|max:100',
            'jenis_kelamin' => 'required|in:L,P',
            'file_foto'=>'required|image|max:2000',
            'alamat' => 'required|max:250',
            'tlp' => 'required|numeric'
        ], [], [
            'tlp' => 'Telepon'
        ]);

        $folder = 'images';
        if (!file_exists($folder)){
        mkdir($folder, 0777, true);
        }
        $file = $request->file('file_foto');
        $ext = $file->getClientOriginalExtension();
        $filename = date('Ymdhis').'.'.$ext;
        $img = Image::make($file);
        $img->fit(300,200);
        $img->save($folder.'/'.$filename);
        $request->merge([
        'foto'=>$filename,
        ]);

        

        Member::create($request->all());

        return redirect()->route('member.index')
        ->with('message', 'success store');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function show(Member $member)
    {
        return abort(404);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function edit(Member $member)
    {
        $member->foto = asset("images/{$member->foto}");
        LogActivity::add('Berhasil Mengupdate Member');
        return view('member.edit', [
            'member' => $member
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Member $member)
    {
        $request->validate([
            'nama' => 'required|max:100',
            'jenis_kelamin' => 'required|in:L,P',
            'file_foto'=>'nullable|image|max:2000',
            'alamat' => 'required|max:250',
            'tlp' => 'required|numeric'
        ],[], [
            'tlp' => 'Telepon'
        ]);

        if ($request->file_foto){

            $folder = 'images';
            $foto_lama = "{$folder}/{$member->foto}";
            if (file_exists($foto_lama)){
            unlink($foto_lama);
            }
            $file = $request->file('file_foto');
            $ext = $file->getClientOriginalExtension();
            $filename = date('Ymdhis').'.'.$ext;
            $img = Image::make($file);
            $img->fit(300,200);
            $img->save($folder.'/'.$filename);
            $request->merge([
            'foto'=>$filename,
            ]);
        }

        $member->update($request->all());

        return redirect()->route('member.index')
        ->with('message', 'success update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Member  $member
     * @return \Illuminate\Http\Response
     */
    public function destroy(Member $member)
    {

        $folder = 'images';
        $foto_lama = "{$folder}/{$member->foto}";
        if (file_exists($foto_lama)) {
        unlink($foto_lama);
        }
       

        $member->delete();
        LogActivity::add('Berhasil Menghapus Member');
        return back()->with('message', 'success delete');
    }
}
