object modelCheckout: TmodelCheckout
  OldCreateOrder = False
  Height = 274
  Width = 597
  object FCONEXAO: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=checkout'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FMYSQLDRIVER: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\jrose\Documents\Checkout em Delphi.MysQl\Checkout\src\m' +
      'odel\libmySQL.dll'
    Left = 96
    Top = 17
  end
  object FDT_CARGOS: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FCONEXAO
    UpdateOptions.UpdateTableName = 'checkout.cargos'
    TableName = 'checkout.cargos'
    Left = 24
    Top = 96
    object FDT_CARGOSid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDT_CARGOScargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 30
    end
  end
  object FDQ_CARGOS: TFDQuery
    Active = True
    Connection = FCONEXAO
    SQL.Strings = (
      'SELECT ID, '
      '            CARGO '
      'FROM CARGOS')
    Left = 24
    Top = 160
  end
  object DS_CARGOS: TDataSource
    DataSet = FDQ_CARGOS
    Left = 24
    Top = 216
  end
end