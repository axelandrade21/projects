 /*ETAPA 1*/
 int * elegirSolicitudMecanicosTipo(int n);
 int * elegirSolicitudMaquinaTipo(int n);
 int * elegirSolicitudHerramientaTipo(int n);
 bool verificarSolicitudTerminado(int i);
 bool verificarFinalizacionSolicitudes();
 int compararValoresMatricesNR(int i);
 void insertarAlFinal(int id, int numeroPlaca,int totalTiempo, bool estado, int totalMecanicos, bool finalizado, int totalMaq, int totalHer,int);
 void desapilarDeColaListoSolicitud(solicitudesListas *colaAux,int numeroPlaca);
 void sumarValoresMatrizAsignados(int i);
 void restarDisponibles(int i);
 void actualizarMatrizNecesarios(int i);
 void verMatrizNecesarios();
 void devolverRecursos(int i);
 void verRecursosDisponibles();
 void seleccionarSolicitudListo(solicitudesListas *cl, solicitudesListas *t, int totalSolicitudes);
 void agregarNuevaSolicitud(solicitudes *colaS, int id, int numeroPlaca);
 void obtenerColaSolicitud(solicitudes *cn, solicitudesListas *cs);
 void obtenerSolicitudListoAuxiliar(solicitudesListas *cn, solicitudesListas *cs);
 void agregarSolicitudALista(solicitudesListas *colaS, int id, int numeroPlaca, int tiempo, bool estado,int totalMec, int *listaMec,bool finalizado,int *listaMaq, int *listHerra, int totalMaq, int totalHerr,int);
 void desapilarDeColaSolicitud(solicitudes *colaAux,int numeroPlaca);
 int verificarTipoMecanico(int *tipos, int total, int i);
 /*ETAPA 2*/
 void restaurarRecursosMatrizNecesarios(int solicitud);
void asignarSolicitudAMecanicos(int *p, int cantidad, int sol);
void asignarSolicitudAMaquinas(int *p, int cantidad, int sol);
void asignarSolicitudAHerramientas(int *p, int cantidad, int sol);
int resetearTiempo(int sol);
void guardarEstadoSolicitud(int sol,int placa, int mecanicos, int maquinas, int herramientas);
void desocuparMecanico(int sol);
void desocuparMaquina(int sol);
void desocuparHerramienta(int sol);
void detallarMecanicosSolicitud(int sol);
void detallarMaquinasSolicitud(int sol);
void detallarHerramientasSolicitud(int sol);
void reducirTiempoMecanico(int sol);
int verificarTipoMaquina(int *tipos, int total, int i);
int verificarTipoHerramienta(int *tipos, int total, int i);
bool verificarIteracionesSolicitud(int iteraciones);
int generarNumeroCubo();
void asignarCuboLlaveASolicitud(int numeracion, int solicitud);
void restaurarEstadoRollback(int sol, int placaS);
void restaurarRecursosMatrizNecesariosRollback(int solicitud, int mec, int maq, int herr);
