@AbapCatalog.sqlViewName: 'ZV_CLIENTES1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vista basica clientes'
@Metadata.allowExtensions: true
define view Z_B_RENT_CUST1
  as select from ztb_rent_cust1
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
