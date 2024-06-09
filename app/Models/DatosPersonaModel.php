<?php

namespace App\Models;

use CodeIgniter\Model;

class DatosPersonaModel extends Model
{
    protected $table = 'datos_persona';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'cedula', 'nombre', 'apellido', 'edad', 'correo', 'direccion'
    ];

    public function datosAcademicos($personaId)
    {
        return $this->db->table('datos_academicos')
            ->where('persona_id', $personaId)
            ->get()
            ->getResultArray();
    }
}
