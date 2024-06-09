<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\DatosPersonaModel;
use App\Models\DatosAcademicosModel;

class DatosPersona extends ResourceController
{
    protected $format = 'json';

    // Método para obtener los datos de todas las personas y sus datos académicos utilizando un inner join
    public function index()
    {
        $personaModel = new DatosPersonaModel();

        // Obtener todas las personas y sus datos académicos asociados utilizando un inner join
        $query = $personaModel->select('datos_persona.*, datos_academicos.carrera, datos_academicos.nivel, datos_academicos.materia')
                              ->join('datos_academicos', 'datos_academicos.persona_id = datos_persona.id', 'inner')
                              ->findAll();

        return $this->respond($query);
    }

    // Método para obtener los datos de una persona específica y sus datos académicos
    public function show($id = null)
    {
        if ($id === null) {
            return $this->failNotFound('ID de persona no proporcionado');
        }

        $personaModel = new DatosPersonaModel();
        $academicosModel = new DatosAcademicosModel();

        // Buscar la persona por su ID
        $persona = $personaModel->find($id);

        if (!$persona) {
            return $this->failNotFound('Persona no encontrada');
        }

        // Buscar los datos académicos asociados a la persona
        $academicos = $academicosModel->where('persona_id', $id)->findAll();

        $response = [
            'persona' => $persona,
            'datos_academicos' => $academicos
        ];

        return $this->respond($response);
    }


    

}
