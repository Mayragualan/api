<?php

namespace App\Models;

use CodeIgniter\Model;

class DatosAcademicosModel extends Model
{
    protected $table = 'datos_academicos';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'persona_id', 'carrera', 'nivel', 'materia'
    ];
}
