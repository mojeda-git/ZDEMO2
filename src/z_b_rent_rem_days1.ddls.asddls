@AbapCatalog.sqlViewName: 'ZV_RENTRDAYS1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View Remaining days'
define view Z_B_RENT_REM_DAYS1
  as select from ztb_rent_cars1
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      and  alq_hasta >= $session.system_date
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta)
      end  as Dias
}
