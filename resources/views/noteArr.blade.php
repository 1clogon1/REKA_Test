@php $number=0; @endphp
@php $checked=0; @endphp
@php $idNote=0; @endphp
@foreach($note as $note)
    @php $id=$note->list_id; @endphp
    @php $idNote=$note->id; @endphp
    <div class="card mb-3 p-2 bg-light" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-1">
                <p>№ {{$number=$number+1}}</p>
                <input class="form-check-input" type="checkbox" value=""  id="flexCheckChecked" onclick='addCheckBox({{$note->id}})' @php if($note->checked == 1){echo "checked";} $id=$note->list_id; @endphp >

            </div>
            <div class="col-md-4">
                <a class="nav-link link-dark " href="{{route('ImageNote_View',$note->id)}}">
                    <img src="{{asset("/storage/logo2.png")}}" alt="Фотография заметки" class="imag_WH imag_max">
                </a>

            </div>
            <div class="col-md-7">
                <div class="card-body">
                    <h5 class="card-title">{{$note->name}}</h5>
                    <p class="card-text"><small
                            class="text-muted">Создано: {{$note->created_at}}</small></p>
                </div>
            </div>
            <div class="col-md-10">
                <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#staticBackdrop{{$number}}">
                    Добавить тег
                </button>
                <input type="button" class="btn btn-dark" value="&#128465;" onclick='deleteNote({{$note->id}})'>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop{{$number}}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Добавление тега у {{$note->name}}</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input class="form-control" type="text" id="nameTagNote" placeholder="Введите tag">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <input type="submit" class="btn btn-primary" data-bs-dismiss="modal" id="addNoteTag" onclick="addNoteTag({{$note->id}}, $('#nameTagNote').val())" value="Добавить">
                </div>
            </div>
        </div>
    </div>
@endforeach
