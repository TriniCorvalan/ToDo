# TO DO LIST AND ITEMS

De acuerdo a lo solicitado se crea una lista de tareas que deben ser posibles de crear (nuevas), marcar como completas y eliminar.

### Versiones

Ruby 2.6.0
Rails 6.0
PostgreSQL 13.3


### CÓMO PROBAR

- Considerando que se tiene lo necesario para trabajar en un proyecto en rails con postgresql, clonar el proyecto y levantar en local con `rails s`

1. abrir navegador en `http://localhost:3000/`. Se dirigirá a la página principal.
  - Ejemplo:
    <img width="851" alt="Página principal" src="https://user-images.githubusercontent.com/66638809/146104901-656deecd-fa04-4f67-b6a4-bb24ef69235a.png">

2. Hacer click en _new to do list_ para crear una lista de tareas. Se dirigirá a un formulario donde podrá crear una nueva lista con título y descripción, completar ambos campos y luego click en _create to do list_
  - Vista formulario lista:
  <img width="448" alt="Formulario lista" src="https://user-images.githubusercontent.com/66638809/146105211-8f365f76-bc20-474d-8a65-71a1dac5c643.png">
  
 3. Una vez creada la lista, se redirigirá al show de esta lista que mostrará la información de esta, más abajo los títulos de una tabla (correspondientes a los atributos de las tareas) y separado por una línea habrá un formulario para crear tareas (o _to do items_). Ocupar ese formulario para crear varias tareas.
  - Vista show de lista con formulario de tareas
  <img width="553" alt="Show de lista con formulario de tareas" src="https://user-images.githubusercontent.com/66638809/146105467-b2d440d0-df18-4bfe-a735-90fa3d5f67ac.png">
  - Vista show de lista con varias tareas creadas
  <img width="597" alt="Show lista con varias tareas" src="https://user-images.githubusercontent.com/66638809/146105599-1078be52-9315-4988-91e5-eae8fadaee38.png">

4. Ocupar los enlaces de **completar** para cambiar el status de una tarea. Al clickear ahí debe cambiar el texto y color en status, el enlace dirá marcar como incompleta y se tacharán titulo y estatus.
  - Ejemplos: de tareas completas e incompletas
  <img width="660" alt="tareas completas e incompletas" src="https://user-images.githubusercontent.com/66638809/146105861-97ab787e-433d-4343-9a5c-f560162447ad.png">
  
5. Ocupar los enlaces de **eliminar tarea** para borrar tareas de la lista. Al clickear aparecerá un mensaje de confirmación y si se acepta, se borrará la tarea de la lista y aparecerá un mensaje en la parte superior con un mensaje de éxito.
  - Ejemplo: eliminar tarea
  <img width="1043" alt="confirmar eliminación de tarea" src="https://user-images.githubusercontent.com/66638809/146106072-0d0298d3-792e-4dfb-8d64-453aca91d062.png">
  - Ejemplo mensaje de éxito
  <img width="345" alt="mensaje de exito de eliminar tarea" src="https://user-images.githubusercontent.com/66638809/146106201-0e6d2586-de6a-405d-8157-d17bd7580139.png">
 
### QUÉ MEJORAR

- Pensando en la escalabilidad de este proyecto, sería bueno cambiar el atributo completed de los items a un enum de status para poder tener varios estados.
- Se puede agregar la edición de cada item
- Mejorar en estilo, usabilidad y accesibilidad
- Ocupar AJAX para la creación, edición y eliminación remota de items
- Desplegar todas las listas con items (relevantes) en un dashboard
- ...
