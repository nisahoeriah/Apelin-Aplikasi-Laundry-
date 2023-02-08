@extends ('layouts.main',['title'=>'My Profile'])
@section ('content')
<x-content :title="['name'=>'My Profile','icon'=>'fas fa-user']">
    <div class="row">
        <div class="col-lg-4 col-md-6">

            @if (session('message') == 'success update')
            <x-alert-success type="update" />
            @endif

            <form class="card card-primary" method="POST" action="{{ route('profile') }}">
                <div class="card-header"></div>
                <div class="card-body">
                    @csrf
                    <x-input label="Nama" name="nama" :value="$user->nama" />

                    <x-input label="Username" name="username" :value="$user->username" disabled/>

                    <p class="text-muted mt-5">
                        Kosongkan password jika tidak mengganti password.
                    </p>
                    <x-input label="Password" name="password" type="password" />
                    <x-input label="Password Konfirmasi" name="password_confirmation" type="password" />
                </div>
                <div class="card-footer">
                    <x-btn-update />
                </div>
            </form>
        </div>
    </div>

    {{-- @push('js')
    <script>
        const password = document.querySelector("input");
        const btn_show = document.querySelector("i");
        btn_show.addEdventListener("click", function() {
            if(password.type === "password") {
                password.type === "text";
                btn_show.classList.add("hide");
            } else {
                password.type = "password";
                btn_show.classList.remove("hide");
            }
        })
    </script>
    @endpush --}}
</x-content>
@endsection