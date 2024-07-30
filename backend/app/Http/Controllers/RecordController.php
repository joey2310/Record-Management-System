<?php

namespace App\Http\Controllers;

use App\Models\Record;
use Illuminate\Http\Request;

class RecordController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Record::with('category');

        if ($request->filled('active')) {
            $query->where('is_active', $request->active);
        }

        if ($request->filled('search')) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }
        $query->orderBy('created_at', 'desc');

        return response()->json($query->get(), 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'category_id' => 'required',
            'is_active' => 'required|boolean',
        ]);

        $record = Record::create($request->all());

        return response()->json($record, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $record = Record::with('category')->findOrFail($id);
        return response()->json($record, 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $record = Record::find($id);
        
        if (!$record) {
            return response()->json(['message' => 'Record not found'], 404);
        }

        return response()->json($record);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'string|max:255',
            'description' => 'string',
            'category_id' => 'required',
            'is_active' => 'boolean',
        ]);

        $record = Record::findOrFail($id);
        $record->update($request->all());

        return response()->json($record, 200);
    }
    
    public function destroy($id)
    {
        Record::destroy($id);
        return response()->json(null, 204);
    }

    public function bulkDestroy(Request $request)
    {
        Record::destroy($request->ids);
        return response()->json(null, 204);
    }
}
