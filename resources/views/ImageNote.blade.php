@extends('form')

@section('title')
    Заметки
@endsection

@section('view')

    <div class="text-center">
        <h1>
            Фотография
        </h1>
        <input type="submit" class="btn btn-dark" value="Вернуться к заметкам" onclick="notiId({{$idList}})">


        <div class="container py-3 col-12 col-md-9 col-lg-7 col-xl-6 ">
            <div class="card p-5 bg-info bg-gradient" style="border-radius: 15px">
                <div class="text-center">
                    <h2>
                        Фотография заметки: {{$nameNote}}}
                    </h2>
                </div>

                    <div class="mb-3 ">

                        <img src="{{asset("/storage/logo2.png")}}" class="card-img-top" alt="Фото" style="max-height: 250px">
                        <div id="error_nameList"></div>

                    </div>
                    <div class="text-center">

                            <input type="submit" class="btn-dark btn" name="deleteImageNote" id="deleteImageNoteId" value="Удалить фотографию" onclick="deleteImageNote({{$idNote}})">



                            <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                Загрузить фотографию
                            </button>
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Добавление фотографии</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <input class="form-control" type="file" id="formFileMultiple" multiple />

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                                            <input type="submit" class="btn btn-primary" data-bs-dismiss="modal" id="addNoteTag" onclick="" value="Добавить">
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </div>

            </div>
        </div>
    </div>










@endsection

@section('script')
    <script>
        function notiId($id){
            window.location = "/NoteList/"+$id;
        }

        function deleteImageNote($id){
            $.ajax({
                type: "PATCH",
                url: "/DeleteImageNote?idNote="+$id,
                dataType: "json",
                processData: false,
                contentType: false,
                mimeType: "multipart/form-data",
                timeout: 0,

            });
        }

    </script>
@endsection
