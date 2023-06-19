@extends('form')

@section('title')
    Заметки
@endsection

@section('view')
    <style>
        .imag_max {
            max-width: 150px;
            max-height: 150px;
        }
        .imag_WH {
            width: 150px;
            height: 150px;
        }
    </style>

    <div class="text-center">
        <h1>
            Ваши заметки
        </h1>
    </div>
    <div class="container py-3 col-12 col-md-9 col-lg-7 col-xl-6 ">
        <div class="card p-5 bg-secondary bg-gradient" style="border-radius: 15px">
            <div class="text-center">
                <h2>
                    Создание новой заметки
                </h2>
            </div>
            <form method="POST">
                @csrf
                <div class="mb-3 ">
                    <label class="form-label">Введите название</label>
                    <input type="text" class="form-control" id="nameNoteId" name="nameNote"
                           placeholder="Введите название новой заметки" required>
                    <div id="error_nameList"></div>

                </div>
                <div class="text-center">
                    <button type="submit" class="btn-dark btn" name="add_note" id="add_noteId">Создать новую заметку
                    </button>
                </div>
            </form>
        </div>
    </div>


    <!-- Button trigger modal -->




    <div class="container py-3 col-12 col-md-9 col-lg-7 col-xl-6">
        <div class="p-5" id="noteId">
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

                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false" onload="">
                                    Кнопка выпадающего списка
                                </button>
                                <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                                    <li><a class="dropdown-item active" href="#">Действие</a></li>
                                    <li><a class="dropdown-item" href="#">Другое действие</a></li>
                                    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
                                </ul>
                            </div>
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
        </div>
    </div>



@endsection

@section('script')
    <script>
        $(document).ready(function () {
            $(document).on('click', '#add_noteId', function (e) {
                e.preventDefault();
                var data = new FormData();
                data.append("nameNote", $('#nameNoteId').val());
                data.append("idList", {{$idList}});
                $.ajax({
                    type: "POST",
                    url: "/AddNote",
                    data: data,
                    dataType: "json",
                    processData: false,
                    contentType: false,
                    mimeType: "multipart/form-data",
                    timeout: 0,

                    success: function (response) {

                        //Елси вернулась ошибка кода 400
                        if (response.status === 400) {
                            if (response.errors.nameNote) {
                                $('#error_nameNote').addClass(' text-danger');
                                $('#error_nameNote').html("");
                                $('#error_nameNote').append('<p>' + response.errors.nameNote + '</p>');
                            } else {
                                $('#error_nameNote').html("");
                            }

                        } else if (response.status === 200) {
                            $.ajax({
                                type: 'GET',
                                url: '/NoteArr/'+{{$idList}},
                                contentType: "application/json",
                                success: function(data) {
                                    $("#noteId").html("");
                                    $("#noteId").append(data);
                                }

                            })

                        }
                    }
                });
            });
        });




        function addCheckBox($id) {
                    $.ajax({
                        type: "PATCH",
                        url: "/AddChecked?idNote="+$id,
                        dataType: "json",
                        processData: false,
                        contentType: false,
                        mimeType: "multipart/form-data",
                        timeout: 0,

                    });

        }

        function addNoteTag($id,$name) {
            var data = new FormData();
            data.append("nameNoteTag", $name);
            data.append("idNote", $id);
            $.ajax({
                type: "POST",
                url: "/AddNoteTag",
                dataType: "json",
                data: data,
                processData: false,
                contentType: false,
                mimeType: "multipart/form-data",
                timeout: 0,
                success: function (response) {

                }
            });

        }

        function deleteNote($id) {
            $.ajax({
                type: "DELETE",
                url: "/DeleteNote?idNote="+$id,
                dataType: "json",
                processData: false,
                contentType: false,
                mimeType: "multipart/form-data",
                timeout: 0,
            });

            $.ajax({
                type: 'GET',
                url: '/NoteArr/'+{{$idList}},
                contentType: "application/json",
                success: function(data) {
                    $("#noteId").html("");
                    $("#noteId").append(data);
                }

            })

        }

    </script>
@endsection
