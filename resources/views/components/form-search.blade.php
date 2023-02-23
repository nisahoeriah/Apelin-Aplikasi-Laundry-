@props(['name'])
<form method="GET" class="form-inline">
    <div class="input-group  ml-auto">
        <input name="{{ $name }}" value="<?= request()->input($name) ?>" type="text" class="form-control" placeholder="search...">
        <div class="input-group-append">
            <button type="submit" class="btn btn-info">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
</form>
