object modelCheckout: TmodelCheckout
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 399
  Width = 393
  object FCONEXAO: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=checkout'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 22
    Top = 8
  end
  object FMYSQLDRIVER: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\jrose\Documents\Checkout em Delphi.MysQl\Checkout\src\m' +
      'odel\libmySQL.dll'
    Left = 94
    Top = 9
  end
  object FDT_CARGOS: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FCONEXAO
    UpdateOptions.UpdateTableName = 'checkout.cargos'
    TableName = 'checkout.cargos'
    Left = 30
    Top = 176
    object FDT_CARGOSid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object FDT_CARGOScargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 30
    end
  end
  object FDQ_CARGOS: TFDQuery
    Connection = FCONEXAO
    SQL.Strings = (
      'SELECT ID, '
      '            CARGO '
      'FROM CARGOS')
    Left = 30
    Top = 120
  end
  object DS_CARGOS: TDataSource
    AutoEdit = False
    DataSet = FDT_CARGOS
    Left = 30
    Top = 232
  end
  object DS_USUARIOS: TDataSource
    Left = 126
    Top = 232
  end
  object FDQ_USUARIOS: TFDQuery
    Connection = FCONEXAO
    Left = 122
    Top = 121
  end
  object FDT_USUARIOS: TFDTable
    Connection = FCONEXAO
    Left = 124
    Top = 177
  end
end
