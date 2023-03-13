@extends ('layouts.main',['title'=>'Member'])
@section ('content')
<x-content :title="['name'=>'Member','icon'=>'fas fa-users']">
    <div class="row">
        <div class="col-lg-4 col-md-6">
            <form 
            class="card card-info" action="{{ route('member.update',['member'=>$member->id]) }}"
            method="POST" 
            enctype="multipart/form-data">
                <div class="card-header">
                    Edit Member
                </div>
                <div class="card-body">
                    @csrf
                    @method('PUT')
                    <x-input label="Nama" name="nama" 
                    :value="$member->nama" />

                    <img src="{{ $member->foto }}" class="img-flud" />

                    <label>Ganti File Foto/Gambar</label>
                    <x-input name="file_foto" type="file"/>

                    <x-select 
                    label="Jenis Kelamin" name="jenis_kelamin"
                    :value="$member->jenis_kelamin" 
                    :data-option="[
                        ['option'=>'Laki-laki','value'=>'L'],
                        ['option'=>'Perempuan','value'=>'P']
                    ]" />

                    <x-input label="Telepon" name="tlp" 
                    :value="$member->tlp" />

                    <x-textarea label="Alamat" name="alamat" 
                    :value="$member->alamat" />
                    
                </div>
                <div class="card-footer">
                    <x-btn-update />
                </div>
            </form>
        </div>
    </div>
</x-content>
@endsection