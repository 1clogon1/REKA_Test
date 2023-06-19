<?php

namespace App\Http\Controllers;

use App\Models\NoteList;
use App\Models\Note;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class NoteController extends Controller
{

    function AddList(Request $request)
    {
        $user = Auth::user();
        $valid = Validator::make($request->all(), [
            'nameList' => 'required|String|max:50|min:3',

        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            NoteList::create([
                'name' => $request->nameList,
                'user_id' => $user->id,
            ]);

            return response()->json([
                'status' => 200,
                'message' => "Список создан",
            ]);

        }

    }

    function AddNote(Request $request)
    {
        $valid = Validator::make($request->all(), [
            'nameNote' => 'required|String|max:100|min:3',
            'idList' => 'required|String|max:100',
        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            Note::create([
                'name' => $request->nameNote,
                'list_id' => $request->idList,
            ]);

            return response()->json([
                'status' => 200,
                'message' => "Запись создан",
            ]);

        }

    }


    function NoteList($id)
    {
        $Note = Note::where('list_id', $id)->latest()->get();

        return view('todoid', [
            'note' => $Note,
            'idList' => $id,
        ]);
    }

    function AddChecked(Request $request)
    {
        $valid = Validator::make($request->all(), [
            'idNote' => 'required|String|max:100',
        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            $Note = Note::where('id', $request->idNote)->first();
            if($Note->checked==1){
                $Note->checked = 0;
                $Note->update($request->input());
            }
            else{
                $Note->checked = 1;
                $Note->update($request->input());
            }

            return response()->json([
                'status' => 200,
                'message' => "Отмечено",
            ]);

        }
    }


    function AddNoteTag(Request $request)
    {
        $valid = Validator::make($request->all(), [
            'nameNoteTag' => 'required|String|max:100|min:2',
            'idNote' => 'required|String|max:100',
        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            Tag::create([
                'name' => $request->nameNoteTag,
                'note_id' => $request->idNote,
            ]);

            return response()->json([
                'status' => 200,
                'message' => "Tag создан",
            ]);

        }

    }
    function DeleteNote(Request $request)
    {
        $valid = Validator::make($request->all(), [
            'idNote' => 'required|String|max:100',
        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            $Note = Note::where('id', $request->idNote)->first();
            $Note->delete();

            return response()->json([
                'status' => 200,
                'message' => "Запись удалена",
            ]);
        }

    }
    function NoteArr($id){
        $Note = Note::where('list_id',$id)->latest()->get();

        return view('noteArr', [
            'note' => $Note,
            'idList' => $id,
        ]);
    }

    function ListArr($id){
        $user = Auth::user();
        $List= NoteList::where('user_id',$id)->latest()->get();

        return view('listArr',[
            'list'=>$List,
            'user_id'=>$user->id
        ]);
    }


    function DeleteImageNote(Request $request)
    {
        $valid = Validator::make($request->all(), [
            'idNote' => 'required|String|max:100',
        ]);
        if ($valid->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $valid->messages()
            ]);
        } else {
            $Note = Note::where('id', $request->idNote)->first();
            if($Note->checked==1){
                $Note->image = null;
                $Note->update($request->input());
            }
            else{
                $Note->checked = 1;
                $Note->update($request->input());
            }

            return response()->json([
                'status' => 200,
                'message' => "Фотографию удалена",
            ]);

        }
    }


}
