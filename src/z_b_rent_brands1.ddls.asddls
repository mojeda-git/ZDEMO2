@AbapCatalog.sqlViewName: 'ZV_BRANDS1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vista basica marcas'
define view Z_B_RENT_BRANDS1 as select from ztb_rent_brands1 {
    key marca as Marca
}
