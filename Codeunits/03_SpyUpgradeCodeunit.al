codeunit 77503 SpyUpgradeCodeunit
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        VatRegFormat: Record "VAT Registration No. Format";
    begin
        InsertWebservice('SpyPaymentTerm', 4, 'page');
        InsertWebservice('SpyCustomer', 77513, 'page');
        InsertWebservice('SpySupplier', 26, 'page');
        InsertWebservice('SpyLedgerAccount', 16, 'page');
        InsertWebservice('SpyCustomerTemplate', 5157, 'page');
        InsertWebservice('SpyCreateJournalLine', 77502, 'codeunit');
        InsertWebservice('SpyCustomerTrans', 25, 'page');
        InsertWebservice('SpySupplierTrans', 29, 'page');
        InsertWebservice('SpyCalcCustomerBalance', 77504, 'codeunit');
        InsertWebService('SpyGeneralJournalLine', 39, 'page');
        InsertWebService('SpyJournalPage', 77504, 'page');
        InsertWebService('SpyCustLedgerPage', 77505, 'page');
        InsertWebService('SpyVendLedgerPage', 77506, 'page');
        InsertWebService('SpyCountryPage', 10, 'page');
        InsertWebservice('SpyExchangeRates', 483, 'page');
        InsertWebservice('SpyLedgerTrans', 20, 'page');
        InsertWebservice('SpyPostCode', 77509, 'page');
        InsertWebservice('SpyTemplateLine', 77510, 'page');
        InsertWebservice('SpyDefaultDimension', 77511, 'page');
        InsertWebservice('SpyVatPostingSetup', 472, 'page');
        InsertWebservice('SpyFieldsPage', 77512, 'page');
        InsertWebservice('SpyApplyCustomerTemplates', 77505, 'codeunit');


        // Slet eventuelle CVR format records
        if VatRegFormat.FindSet() then
            VatRegFormat.DeleteAll();
    end;

    procedure InsertWebservice(Name: text[100]; Id: Integer; ObjType: text);

    var
        webservice: record "Tenant Web Service";
    begin
        webservice.setfilter("Service Name", Name);
        if webservice.FindSet() then begin
            webservice.Delete();
        end;
        webservice.setfilter("Service Name", Name);
        if not webservice.findset() then begin
            webservice.init;
            WebService."Object ID" := Id;
            webservice.Published := true;
            EVALUATE(webservice."Object Type", ObjType);
            webservice."Service Name" := Name;
            webservice.Insert(true);
        end;
    end;
}