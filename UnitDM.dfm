object DM: TDM
  OldCreateOrder = False
  Left = 218
  Top = 45
  Height = 622
  Width = 976
  object DManutencao: TDataSource
    DataSet = TManutencao
    Left = 72
    Top = 1238
  end
  object DEssencia: TDataSource
    DataSet = TEssencia
    Left = 72
    Top = 1342
  end
  object DFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 72
    Top = 1494
  end
  object DQEssencia: TDataSource
    DataSet = QEssencia
    Left = 72
    Top = 1390
  end
  object DQFornecedor: TDataSource
    DataSet = QFornecedor
    Left = 72
    Top = 1446
  end
  object TEssencia: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ETOROS'
        DataType = ftFloat
      end
      item
        Name = 'TENTRADA'
        DataType = ftFloat
      end
      item
        Name = 'TSAIDA'
        DataType = ftFloat
      end
      item
        Name = 'ESERRADA'
        DataType = ftFloat
      end
      item
        Name = 'EINICIAL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'INDESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ESSENCIA'
    Left = 152
    Top = 1342
    object TEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 88
    Top = 6
  end
  object TFornecedor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMEFORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATOFONE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATOFAX'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CONTATORAMAL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CONTATOEMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TIPOCLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RG'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'INDNOMEFORNECEDOR'
        Fields = 'INSCESTADUAL'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'FORNECEDOR'
    Left = 152
    Top = 1494
    object TFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 50
    end
    object TFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TFornecedorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Size = 50
    end
    object TFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Size = 50
    end
    object TFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Size = 4
    end
    object TFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Size = 50
    end
    object TFornecedorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
    end
    object TFornecedorRG: TIBStringField
      FieldName = 'RG'
      Size = 30
    end
    object TFornecedorCPF: TIBStringField
      FieldName = 'CPF'
    end
    object TFornecedorOBS: TIBStringField
      FieldName = 'OBS'
      Size = 255
    end
    object TFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TFornecedorINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
    end
  end
  object TManutencao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'NOMEEMPRESA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMEFANTASIA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADEUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'INSCESTADUAL'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'REGIBAMA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCMUNICIPAL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INSCJUNTA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATAREGJUNTA'
        DataType = ftDateTime
      end
      item
        Name = 'INIATIVIDADE'
        DataType = ftDateTime
      end
      item
        Name = 'CAPITALSOCIAL'
        DataType = ftFloat
      end
      item
        Name = 'CANE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CNAEDESCRICAO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NATESTABELECIMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RESPONSAVELEMPRESA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFRESPONSAVEL'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTADOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPFCONTADOR'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CRCCONTADOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOMEFILIAL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJFILIAL'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNAE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CCSEMA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'NOMEEMPRESA'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'MANUTENCAO_CODIGOEMPRESA'
        Fields = 'CODIGOEMPRESA'
      end
      item
        Name = 'MANUTENCAO_NOMEEMPRESA'
        Fields = 'NOMEEMPRESA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'MANUTENCAO'
    Left = 152
    Top = 1238
    object TManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
    end
    object TManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Size = 50
    end
    object TManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object TManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object TManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object TManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object TManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object TManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Size = 9
    end
    object TManutencaoCX: TIBStringField
      FieldName = 'CX'
      Size = 5
    end
    object TManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Size = 2
    end
    object TManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Size = 11
    end
    object TManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Size = 11
    end
    object TManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object TManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Size = 50
    end
    object TManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object TManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Size = 12
    end
    object TManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Size = 10
    end
    object TManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 10
    end
    object TManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Size = 12
    end
    object TManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
    end
    object TManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Size = 9
    end
    object TManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Size = 255
    end
    object TManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Size = 50
    end
    object TManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Size = 40
    end
    object TManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Size = 14
    end
    object TManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Size = 40
    end
    object TManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Size = 14
    end
    object TManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Size = 15
    end
    object TManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Size = 50
    end
    object TManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Size = 18
    end
    object TManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Size = 9
    end
    object TManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
    end
    object TManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
    end
    object TManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
    end
    object TManutencaoCCSEMA: TFloatField
      FieldName = 'CCSEMA'
    end
  end
  object QEssencia: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESSENCIA')
    Left = 152
    Top = 1390
    object QEssenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ESSENCIA.CODIGO'
    end
    object QEssenciaESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ESSENCIA.ESSENCIA'
      Required = True
      Size = 30
    end
  end
  object QFornecedor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FORNECEDOR')
    Left = 152
    Top = 1446
    object QFornecedorCODIGOFORNECEDOR: TIntegerField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'FORNECEDOR.CODIGOFORNECEDOR'
    end
    object QFornecedorNOMEFORNECEDOR: TIBStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FORNECEDOR.NOMEFORNECEDOR'
      Size = 50
    end
    object QFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'FORNECEDOR.NOMEFANTASIA'
      Size = 50
    end
    object QFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'FORNECEDOR.ENDERECO'
      Size = 40
    end
    object QFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'FORNECEDOR.NUMERO'
      Size = 6
    end
    object QFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'FORNECEDOR.BAIRRO'
      Size = 30
    end
    object QFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'FORNECEDOR.CEP'
      Size = 9
    end
    object QFornecedorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'FORNECEDOR.CX'
      Size = 6
    end
    object QFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'FORNECEDOR.CIDADE'
      Size = 30
    end
    object QFornecedorCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'FORNECEDOR.CIDADEUF'
      Size = 2
    end
    object QFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'FORNECEDOR.FONE'
      Size = 11
    end
    object QFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'FORNECEDOR.FAX'
      Size = 11
    end
    object QFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'FORNECEDOR.EMAIL'
      Size = 50
    end
    object QFornecedorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'FORNECEDOR.WEB'
      Size = 50
    end
    object QFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'FORNECEDOR.CNPJ'
      Size = 18
    end
    object QFornecedorCONTATOFONE: TIBStringField
      FieldName = 'CONTATOFONE'
      Origin = 'FORNECEDOR.CONTATOFONE'
      Size = 50
    end
    object QFornecedorCONTATOFAX: TIBStringField
      FieldName = 'CONTATOFAX'
      Origin = 'FORNECEDOR.CONTATOFAX'
      Size = 50
    end
    object QFornecedorCONTATORAMAL: TIBStringField
      FieldName = 'CONTATORAMAL'
      Origin = 'FORNECEDOR.CONTATORAMAL'
      Size = 4
    end
    object QFornecedorCONTATOEMAIL: TIBStringField
      FieldName = 'CONTATOEMAIL'
      Origin = 'FORNECEDOR.CONTATOEMAIL'
      Size = 50
    end
    object QFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'FORNECEDOR.COMPLEMENTO'
      Size = 30
    end
    object QFornecedorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = 'FORNECEDOR.TIPOCLIENTE'
    end
    object QFornecedorRG: TIBStringField
      FieldName = 'RG'
      Origin = 'FORNECEDOR.RG'
      Size = 30
    end
    object QFornecedorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'FORNECEDOR.CPF'
    end
    object QFornecedorOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'FORNECEDOR.OBS'
      Size = 255
    end
    object QFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'FORNECEDOR.CONTATO'
      Size = 50
    end
    object QFornecedorINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'FORNECEDOR.INSCESTADUAL'
    end
  end
  object QManutencao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DManutencao
    SQL.Strings = (
      'select * from MANUTENCAO')
    Left = 152
    Top = 1286
    object QManutencaoCODIGOEMPRESA: TIntegerField
      FieldName = 'CODIGOEMPRESA'
      Origin = 'MANUTENCAO.CODIGOEMPRESA'
    end
    object QManutencaoNOMEEMPRESA: TIBStringField
      FieldName = 'NOMEEMPRESA'
      Origin = 'MANUTENCAO.NOMEEMPRESA'
      Required = True
      Size = 50
    end
    object QManutencaoNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'MANUTENCAO.NOMEFANTASIA'
      Size = 50
    end
    object QManutencaoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'MANUTENCAO.ENDERECO'
      Size = 40
    end
    object QManutencaoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'MANUTENCAO.NUMERO'
      Size = 6
    end
    object QManutencaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'MANUTENCAO.COMPLEMENTO'
      Size = 30
    end
    object QManutencaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'MANUTENCAO.BAIRRO'
      Size = 30
    end
    object QManutencaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'MANUTENCAO.CEP'
      Size = 9
    end
    object QManutencaoCX: TIBStringField
      FieldName = 'CX'
      Origin = 'MANUTENCAO.CX'
      Size = 5
    end
    object QManutencaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'MANUTENCAO.CIDADE'
      Size = 30
    end
    object QManutencaoCIDADEUF: TIBStringField
      FieldName = 'CIDADEUF'
      Origin = 'MANUTENCAO.CIDADEUF'
      Size = 2
    end
    object QManutencaoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'MANUTENCAO.FONE'
      Size = 11
    end
    object QManutencaoFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'MANUTENCAO.FAX'
      Size = 11
    end
    object QManutencaoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'MANUTENCAO.EMAIL'
      Size = 50
    end
    object QManutencaoWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'MANUTENCAO.WEB'
      Size = 50
    end
    object QManutencaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'MANUTENCAO.CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 18
    end
    object QManutencaoINSCESTADUAL: TIBStringField
      FieldName = 'INSCESTADUAL'
      Origin = 'MANUTENCAO.INSCESTADUAL'
      EditMask = '99.999.999-9;0;_'
      Size = 12
    end
    object QManutencaoREGIBAMA: TIBStringField
      FieldName = 'REGIBAMA'
      Origin = 'MANUTENCAO.REGIBAMA'
      Size = 10
    end
    object QManutencaoINSCMUNICIPAL: TIBStringField
      FieldName = 'INSCMUNICIPAL'
      Origin = 'MANUTENCAO.INSCMUNICIPAL'
      Size = 10
    end
    object QManutencaoINSCJUNTA: TIBStringField
      FieldName = 'INSCJUNTA'
      Origin = 'MANUTENCAO.INSCJUNTA'
      Size = 12
    end
    object QManutencaoCAPITALSOCIAL: TFloatField
      FieldName = 'CAPITALSOCIAL'
      Origin = 'MANUTENCAO.CAPITALSOCIAL'
    end
    object QManutencaoCANE: TIBStringField
      FieldName = 'CANE'
      Origin = 'MANUTENCAO.CANE'
      Size = 9
    end
    object QManutencaoCNAEDESCRICAO: TIBStringField
      FieldName = 'CNAEDESCRICAO'
      Origin = 'MANUTENCAO.CNAEDESCRICAO'
      Size = 255
    end
    object QManutencaoNATESTABELECIMENTO: TIBStringField
      FieldName = 'NATESTABELECIMENTO'
      Origin = 'MANUTENCAO.NATESTABELECIMENTO'
      Size = 50
    end
    object QManutencaoRESPONSAVELEMPRESA: TIBStringField
      FieldName = 'RESPONSAVELEMPRESA'
      Origin = 'MANUTENCAO.RESPONSAVELEMPRESA'
      Size = 40
    end
    object QManutencaoCPFRESPONSAVEL: TIBStringField
      FieldName = 'CPFRESPONSAVEL'
      Origin = 'MANUTENCAO.CPFRESPONSAVEL'
      Size = 14
    end
    object QManutencaoCONTADOR: TIBStringField
      FieldName = 'CONTADOR'
      Origin = 'MANUTENCAO.CONTADOR'
      Size = 40
    end
    object QManutencaoCPFCONTADOR: TIBStringField
      FieldName = 'CPFCONTADOR'
      Origin = 'MANUTENCAO.CPFCONTADOR'
      Size = 14
    end
    object QManutencaoCRCCONTADOR: TIBStringField
      FieldName = 'CRCCONTADOR'
      Origin = 'MANUTENCAO.CRCCONTADOR'
      Size = 15
    end
    object QManutencaoNOMEFILIAL: TIBStringField
      FieldName = 'NOMEFILIAL'
      Origin = 'MANUTENCAO.NOMEFILIAL'
      Size = 50
    end
    object QManutencaoCNPJFILIAL: TIBStringField
      FieldName = 'CNPJFILIAL'
      Origin = 'MANUTENCAO.CNPJFILIAL'
      Size = 18
    end
    object QManutencaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'MANUTENCAO.NOME'
      Size = 50
    end
    object QManutencaoCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = 'MANUTENCAO.CNAE'
      Size = 9
    end
    object QManutencaoDATAREGJUNTA: TDateTimeField
      FieldName = 'DATAREGJUNTA'
      Origin = 'MANUTENCAO.DATAREGJUNTA'
    end
    object QManutencaoINIATIVIDADE: TDateTimeField
      FieldName = 'INIATIVIDADE'
      Origin = 'MANUTENCAO.INIATIVIDADE'
    end
    object QManutencaoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = 'MANUTENCAO.LOGRADOURO'
    end
    object QManutencaoCCSEMA: TFloatField
      FieldName = 'CCSEMA'
      Origin = 'MANUTENCAO.CCSEMA'
    end
  end
  object DQManutencao: TDataSource
    DataSet = QManutencao
    Left = 72
    Top = 1286
  end
  object DCredor: TDataSource
    DataSet = TCredor
    Left = 232
    Top = 1237
  end
  object TCredor: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGOCREDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOMECREDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'WEB'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CX'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPOCLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'IND_CREDOR'
        Fields = 'NOMECREDOR'
        Options = [ixUnique]
      end
      item
        Name = 'IND_CIDADE'
        Fields = 'CIDADE'
      end>
    StoreDefs = True
    TableName = 'CREDOR'
    Left = 288
    Top = 1238
    object TCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
    end
    object TCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Size = 50
    end
    object TCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object TCredorCEP: TIBStringField
      FieldName = 'CEP'
      Size = 15
    end
    object TCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object TCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object TCredorUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCredorFONE: TIBStringField
      FieldName = 'FONE'
      Size = 15
    end
    object TCredorFAX: TIBStringField
      FieldName = 'FAX'
      Size = 15
    end
    object TCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object TCredorWEB: TIBStringField
      FieldName = 'WEB'
      Size = 60
    end
    object TCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object TCredorCX: TIBStringField
      FieldName = 'CX'
      Size = 6
    end
    object TCredorCNPJ: TIBStringField
      FieldName = 'CNPJ'
    end
    object TCredorCPF: TIBStringField
      FieldName = 'CPF'
    end
    object TCredorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
    end
    object TCredorIE: TIBStringField
      FieldName = 'IE'
    end
    object TCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object TCredorOBS: TIBStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object DQCredor: TDataSource
    DataSet = QCredor
    Left = 232
    Top = 1285
  end
  object QCredor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CREDOR order by NOMECREDOR')
    Left = 288
    Top = 1286
    object QCredorCODIGOCREDOR: TIntegerField
      FieldName = 'CODIGOCREDOR'
      Origin = 'CREDOR.CODIGOCREDOR'
    end
    object QCredorNOMECREDOR: TIBStringField
      FieldName = 'NOMECREDOR'
      Origin = 'CREDOR.NOMECREDOR'
      Size = 50
    end
    object QCredorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CREDOR.ENDERECO'
      Size = 50
    end
    object QCredorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CREDOR.CEP'
      EditMask = '00000\-9999;0;_'
      Size = 15
    end
    object QCredorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CREDOR.BAIRRO'
    end
    object QCredorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CREDOR.CIDADE'
      Size = 30
    end
    object QCredorUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CREDOR.UF'
      Size = 2
    end
    object QCredorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'CREDOR.FONE'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCredorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'CREDOR.FAX'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object QCredorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CREDOR.EMAIL'
      Size = 60
    end
    object QCredorWEB: TIBStringField
      FieldName = 'WEB'
      Origin = 'CREDOR.WEB'
      Size = 60
    end
    object QCredorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = 'CREDOR.CONTATO'
      Size = 50
    end
    object QCredorCX: TIBStringField
      FieldName = 'CX'
      Origin = 'CREDOR.CX'
      Size = 6
    end
    object QCredorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = 'CREDOR.CNPJ'
      EditMask = '!00.000.000/0000-00;0;_'
    end
    object QCredorCPF: TIBStringField
      FieldName = 'CPF'
      Origin = 'CREDOR.CPF'
      EditMask = '000.000.000-00;0;_'
    end
    object QCredorTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = 'CREDOR.TIPOCLIENTE'
    end
    object QCredorIE: TIBStringField
      FieldName = 'IE'
      Origin = 'CREDOR.IE'
    end
    object QCredorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = 'CREDOR.FANTASIA'
      Size = 30
    end
  end
  object DMunicipio: TDataSource
    DataSet = TMunicipio
    Left = 232
    Top = 1334
  end
  object DProduto: TDataSource
    DataSet = TProduto
    Left = 232
    Top = 1398
  end
  object TMunicipio: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'COD_MUNIC'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOM_MUNIC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COD_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SIG_UF'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'IND_MUNICIPIO1'
        Fields = 'COD_MUNIC'
        Options = [ixUnique]
      end
      item
        Name = 'IND_MUNICIPIO'
        Fields = 'NOM_MUNIC'
      end>
    StoreDefs = True
    TableName = 'MUNICIPIO'
    Left = 288
    Top = 1334
    object TMunicipioCOD_MUNIC: TIBStringField
      FieldName = 'COD_MUNIC'
      Size = 7
    end
    object TMunicipioNOM_MUNIC: TIBStringField
      FieldName = 'NOM_MUNIC'
      Size = 40
    end
    object TMunicipioCOD_UF: TIBStringField
      FieldName = 'COD_UF'
      Size = 2
    end
    object TMunicipioSIG_UF: TIBStringField
      FieldName = 'SIG_UF'
      Size = 2
    end
  end
  object TProduto: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'GRAUIND'
        DataType = ftInteger
      end
      item
        Name = 'NOMEGRAU'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FATOR'
        DataType = ftFloat
      end
      item
        Name = 'CODPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'PRODORIGEM'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FATOREXP'
        DataType = ftFloat
      end
      item
        Name = 'TIPOPROD'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRODDESTINO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PRODUTO'
        Fields = 'NOMEGRAU'
      end
      item
        Name = 'PRODUTO0'
        Fields = 'GRAUIND'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUTO'
    Left = 288
    Top = 1398
    object TProdutoNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
    object TProdutoFATOR: TFloatField
      FieldName = 'FATOR'
      DisplayFormat = '###,#0.00'
    end
    object TProdutoGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
    end
    object TProdutoCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object TProdutoPRODORIGEM: TIBStringField
      FieldName = 'PRODORIGEM'
      Size = 100
    end
    object TProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TProdutoFATOREXP: TFloatField
      FieldName = 'FATOREXP'
    end
    object TProdutoTIPOPROD: TIBStringField
      FieldName = 'TIPOPROD'
      Size = 30
    end
    object TProdutoPRODDESTINO: TIBStringField
      FieldName = 'PRODDESTINO'
      Size = 100
    end
  end
  object DTOTAL: TDataSource
    DataSet = TTOTAL
    Left = 368
    Top = 1238
  end
  object TTOTAL: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NOMEVENDEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end>
    IndexFieldNames = 'NOMEVENDEDOR'
    MasterFields = 'NOMEVENDEDOR'
    StoreDefs = True
    TableName = 'DVPF_TOTAL'
    Left = 432
    Top = 1238
    object TTOTALNOMEVENDEDOR: TIBStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 50
    end
    object TTOTALTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object DQProduto: TDataSource
    DataSet = QProduto
    Left = 360
    Top = 1398
  end
  object QProduto: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PRODUTO')
    Left = 424
    Top = 1398
    object QProdutoNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
    object QProdutoFATOR: TFloatField
      FieldName = 'FATOR'
      DisplayFormat = '###,#0.00'
    end
    object QProdutoGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
      Origin = 'PRODUTO.GRAUIND'
    end
    object QProdutoCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'PRODUTO.CODPRODUTO'
    end
    object QProdutoPRODORIGEM: TIBStringField
      FieldName = 'PRODORIGEM'
      Origin = 'PRODUTO.PRODORIGEM'
      Size = 100
    end
    object QProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTO.UNIDADE'
      Size = 5
    end
    object QProdutoFATOREXP: TFloatField
      FieldName = 'FATOREXP'
      Origin = 'PRODUTO.FATOREXP'
    end
    object QProdutoTIPOPROD: TIBStringField
      FieldName = 'TIPOPROD'
      Origin = 'PRODUTO.TIPOPROD'
      Size = 30
    end
    object QProdutoPRODDESTINO: TIBStringField
      FieldName = 'PRODDESTINO'
      Origin = 'PRODUTO.PRODDESTINO'
      Size = 100
    end
  end
  object QMunicipio: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From Municipio')
    Left = 448
    Top = 1334
    object QMunicipioCOD_MUNIC: TIBStringField
      FieldName = 'COD_MUNIC'
      Size = 7
    end
    object QMunicipioNOM_MUNIC: TIBStringField
      FieldName = 'NOM_MUNIC'
      Size = 40
    end
    object QMunicipioCOD_UF: TIBStringField
      FieldName = 'COD_UF'
      Size = 2
    end
    object QMunicipioSIG_UF: TIBStringField
      FieldName = 'SIG_UF'
      Size = 2
    end
  end
  object DQMunicipio: TDataSource
    DataSet = QMunicipio
    Left = 368
    Top = 1334
  end
  object DSEntrada_Discriminacao: TDataSource
    DataSet = TEntrada_discriminacao
    Left = 72
    Top = 1678
  end
  object TEntrada_discriminacao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODDISCRIMINACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'VALUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VALTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQICMS'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO_TRIBUTARIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTALPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'DATALANCAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'NFNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIATIPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'TRANSFORMADO'
        DataType = ftFloat
      end
      item
        Name = 'TORALOTEESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SITUACAO'
        DataType = ftFloat
      end
      item
        Name = 'SITDATA'
        DataType = ftDateTime
      end
      item
        Name = 'SITHORA'
        DataType = ftDateTime
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CPF'
        DataType = ftFloat
      end
      item
        Name = 'INSCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'DIAMETRO'
        DataType = ftFloat
      end
      item
        Name = 'DIAMETRO1'
        DataType = ftFloat
      end
      item
        Name = 'QUALIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DIAMETROMEDIA'
        DataType = ftFloat
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'INDCODPRODUTO'
        Fields = 'CODIGOPRODUTO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENTRADA_TOROS_DISCRIMINACAO'
    Left = 504
    Top = 905
    object TEntrada_discriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TEntrada_discriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TEntrada_discriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TEntrada_discriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TEntrada_discriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TEntrada_discriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object TEntrada_discriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TEntrada_discriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TEntrada_discriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      DisplayFormat = '0.00'
    end
    object TEntrada_discriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TEntrada_discriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TEntrada_discriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TEntrada_discriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TEntrada_discriminacaoTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TEntrada_discriminacaoTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TEntrada_discriminacaoSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TEntrada_discriminacaoSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TEntrada_discriminacaoSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TEntrada_discriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TEntrada_discriminacaoCPF: TFloatField
      FieldName = 'CPF'
    end
    object TEntrada_discriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TEntrada_discriminacaoDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object TEntrada_discriminacaoDIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object TEntrada_discriminacaoQUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object TEntrada_discriminacaoDIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object TEntrada_discriminacaoOBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object TEntrada_discriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object DSSaida_Discriminacao: TDataSource
    DataSet = TSaida_Discriminacao
    Left = 576
    Top = 1486
  end
  object TSaida_Discriminacao: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODDISCRIMINACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'VALUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VALTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQICMS'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO_TRIBUTARIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTALPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'DATALANCAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'NFNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIATIPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CPF'
        DataType = ftFloat
      end
      item
        Name = 'INSCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end
      item
        Name = 'FORMAPAGTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRAZO'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'CODVENDEDOR'
        DataType = ftFloat
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PLAQUETA'
        DataType = ftFloat
      end
      item
        Name = 'COLUMN2'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COLUMN3'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COLUMN4'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COLUMN5'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COLUMN6'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COLUMN7'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'IND_SAIDA'
        DescFields = 'ESSENCIA'
        Fields = 'ESSENCIA'
        Options = [ixDescending]
      end>
    StoreDefs = True
    TableName = 'SAIDA'
    Left = 704
    Top = 1486
    object TSaida_DiscriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TSaida_DiscriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TSaida_DiscriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TSaida_DiscriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TSaida_DiscriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TSaida_DiscriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object TSaida_DiscriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TSaida_DiscriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TSaida_DiscriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TSaida_DiscriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TSaida_DiscriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TSaida_DiscriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TSaida_DiscriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TSaida_DiscriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TSaida_DiscriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TSaida_DiscriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoLARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TSaida_DiscriminacaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.000'
    end
    object TSaida_DiscriminacaoTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TSaida_DiscriminacaoFORMAPAGTO: TIBStringField
      FieldName = 'FORMAPAGTO'
      Size = 30
    end
    object TSaida_DiscriminacaoPRAZO: TFloatField
      FieldName = 'PRAZO'
    end
    object TSaida_DiscriminacaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TSaida_DiscriminacaoCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object TSaida_DiscriminacaoVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object TSaida_DiscriminacaoPLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
    end
  end
  object DSaidaDiscriminacao1: TDataSource
    DataSet = TSaida_Discriminacao1
    Left = 576
    Top = 1726
  end
  object TSaida_Discriminacao1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA'
    Left = 704
    Top = 1726
    object IntegerField2: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object FloatField24: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object IBStringField23: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object IBStringField24: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object FloatField25: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object FloatField26: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object FloatField27: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object FloatField28: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00%'
    end
    object FloatField29: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object IBStringField25: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object FloatField30: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object FloatField31: TFloatField
      FieldName = 'NFNUMERO'
    end
    object TSaida_Discriminacao1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TSaida_Discriminacao1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TSaida_Discriminacao1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TSaida_Discriminacao1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TSaida_Discriminacao1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TSaida_Discriminacao1LARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TSaida_Discriminacao1EXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.000'
    end
    object TSaida_Discriminacao1TOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TSaida_Discriminacao1FORMAPAGTO: TIBStringField
      FieldName = 'FORMAPAGTO'
      Size = 30
    end
    object TSaida_Discriminacao1PRAZO: TFloatField
      FieldName = 'PRAZO'
    end
    object TSaida_Discriminacao1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TSaida_Discriminacao1CODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object TSaida_Discriminacao1VENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object TSaida_Discriminacao1PLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
    end
  end
  object DQSAIDA_DISCRIMINACAO: TDataSource
    DataSet = QSaida_Discriminacao
    Left = 72
    Top = 1742
  end
  object QSaida_Discriminacao: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SAIDA')
    Left = 232
    Top = 1742
    object QSaida_DiscriminacaoCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODDISCRIMINACAO'
    end
    object QSaida_DiscriminacaoCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOFORNECEDOR'
    end
    object QSaida_DiscriminacaoESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QSaida_DiscriminacaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.UNIDADE'
      Size = 5
    end
    object QSaida_DiscriminacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.QUANTIDADE'
    end
    object QSaida_DiscriminacaoVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.VALUNITARIO'
    end
    object QSaida_DiscriminacaoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.VALTOTAL'
    end
    object QSaida_DiscriminacaoALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ALIQICMS'
    end
    object QSaida_DiscriminacaoCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOPRODUTO'
    end
    object QSaida_DiscriminacaoSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.SITUACAO_TRIBUTARIA'
    end
    object QSaida_DiscriminacaoTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.TOTALPRODUTO'
    end
    object QSaida_DiscriminacaoDATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.DATALANCAMENTO'
    end
    object QSaida_DiscriminacaoNFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.NFNUMERO'
    end
    object QSaida_DiscriminacaoESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.ESSENCIATIPO'
      Size = 30
    end
    object QSaida_DiscriminacaoCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.CODIGOESSENCIA'
    end
    object QSaida_DiscriminacaoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.FORNECEDOR'
      Size = 50
    end
    object QSaida_DiscriminacaoINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.INSCRICAO'
    end
    object QSaida_DiscriminacaoCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.COMPRIMENTO'
    end
    object QSaida_DiscriminacaoLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.LARGURA'
    end
    object QSaida_DiscriminacaoEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.EXPESSURA'
    end
    object QSaida_DiscriminacaoTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'SAIDA_MADEIRAS_DISCRIMINACAO.TOTALM3'
    end
    object QSaida_DiscriminacaoFORMAPAGTO: TIBStringField
      FieldName = 'FORMAPAGTO'
      Origin = 'SAIDA.FORMAPAGTO'
      Size = 30
    end
    object QSaida_DiscriminacaoPRAZO: TFloatField
      FieldName = 'PRAZO'
      Origin = 'SAIDA.PRAZO'
    end
    object QSaida_DiscriminacaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'SAIDA.DESCONTO'
    end
    object QSaida_DiscriminacaoCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      Origin = 'SAIDA.CODVENDEDOR'
    end
    object QSaida_DiscriminacaoVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = 'SAIDA.VENDEDOR'
      Size = 50
    end
    object QSaida_DiscriminacaoPLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
      Origin = 'SAIDA.PLAQUETA'
    end
  end
  object DLOGIN: TDataSource
    DataSet = TLOGIN
    Left = 440
    Top = 1176
  end
  object TLOGIN: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 10
      end>
    StoreDefs = True
    TableName = 'LOGIN'
    Left = 544
    Top = 1176
    object TLOGINCODIGO: TIntegerField
      FieldName = 'CODIGO'
      DisplayFormat = '000'
    end
    object TLOGINUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object TLOGINSENHA: TIBStringField
      FieldName = 'SENHA'
      Size = 10
    end
  end
  object TESDISCRIMINACAO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODDISCRIMINACAO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOFORNECEDOR'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'VALUNITARIO'
        DataType = ftFloat
      end
      item
        Name = 'VALTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ALIQICMS'
        DataType = ftFloat
      end
      item
        Name = 'CODIGOPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'SITUACAO_TRIBUTARIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TOTALPRODUTO'
        DataType = ftFloat
      end
      item
        Name = 'DATALANCAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'NFNUMERO'
        DataType = ftFloat
      end
      item
        Name = 'ESSENCIATIPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODIGOESSENCIA'
        DataType = ftFloat
      end
      item
        Name = 'TRANSFORMADO'
        DataType = ftFloat
      end
      item
        Name = 'TORALOTEESSENCIA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SITUACAO'
        DataType = ftFloat
      end
      item
        Name = 'SITDATA'
        DataType = ftDateTime
      end
      item
        Name = 'SITHORA'
        DataType = ftDateTime
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CPF'
        DataType = ftFloat
      end
      item
        Name = 'INSCRICAO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COMPRIMENTO'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'EXPESSURA'
        DataType = ftFloat
      end
      item
        Name = 'TOTALM3'
        DataType = ftFloat
      end
      item
        Name = 'PLAQUETA'
        DataType = ftFloat
      end
      item
        Name = 'OBSCODIGO'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'INDPLAQUETA'
        Fields = 'PLAQUETA'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENTRADA'
    Left = 192
    Top = 1056
    object TESDISCRIMINACAOCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TESDISCRIMINACAOCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TESDISCRIMINACAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TESDISCRIMINACAOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object TESDISCRIMINACAOVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TESDISCRIMINACAOSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TESDISCRIMINACAOTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TESDISCRIMINACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TESDISCRIMINACAONFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      DisplayFormat = '000000'
    end
    object TESDISCRIMINACAOESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TESDISCRIMINACAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TESDISCRIMINACAOTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TESDISCRIMINACAOTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAOSITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TESDISCRIMINACAOSITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TESDISCRIMINACAOSITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TESDISCRIMINACAOFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TESDISCRIMINACAOCPF: TFloatField
      FieldName = 'CPF'
    end
    object TESDISCRIMINACAOINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
    object TESDISCRIMINACAOOBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
    object TESDISCRIMINACAOCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOLARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAOTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TESDISCRIMINACAOPLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
      DisplayFormat = '000000'
    end
    object TESDISCRIMINACAOOBSCODIGO: TFloatField
      FieldName = 'OBSCODIGO'
    end
  end
  object DESDISCRIMINACAO: TDataSource
    DataSet = TESDISCRIMINACAO
    Left = 72
    Top = 1056
  end
  object TESDISCRIMINACAO1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA'
    Left = 576
    Top = 588
    object TESDISCRIMINACAO1CODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object TESDISCRIMINACAO1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object TESDISCRIMINACAO1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAO1UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object TESDISCRIMINACAO1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TESDISCRIMINACAO1VALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1ALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      DisplayFormat = '0.00'
    end
    object TESDISCRIMINACAO1CODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object TESDISCRIMINACAO1SITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object TESDISCRIMINACAO1TOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object TESDISCRIMINACAO1DATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object TESDISCRIMINACAO1NFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      DisplayFormat = '000000'
    end
    object TESDISCRIMINACAO1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object TESDISCRIMINACAO1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object TESDISCRIMINACAO1TRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object TESDISCRIMINACAO1TORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object TESDISCRIMINACAO1SITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object TESDISCRIMINACAO1SITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object TESDISCRIMINACAO1SITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object TESDISCRIMINACAO1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object TESDISCRIMINACAO1CPF: TFloatField
      FieldName = 'CPF'
    end
    object TESDISCRIMINACAO1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Size = 15
    end
    object TESDISCRIMINACAO1OBS: TIBStringField
      FieldName = 'OBS'
      Size = 100
    end
    object TESDISCRIMINACAO1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object TESDISCRIMINACAO1LARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object TESDISCRIMINACAO1EXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
    end
    object TESDISCRIMINACAO1TOTALM3: TFloatField
      FieldName = 'TOTALM3'
    end
    object TESDISCRIMINACAO1PLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
    end
  end
  object DESDISCRIMINACAO1: TDataSource
    DataSet = TESDISCRIMINACAO1
    Left = 344
    Top = 852
  end
  object DQESERRADA: TDataSource
    DataSet = QESERRADA
    Left = 80
    Top = 1000
  end
  object QESERRADA: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA')
    Left = 192
    Top = 326
    object QESERRADACODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'ENTRADA.CODDISCRIMINACAO'
    end
    object QESERRADACODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA.CODIGOFORNECEDOR'
    end
    object QESERRADAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ENTRADA.ESSENCIA'
      Size = 30
    end
    object QESERRADAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADA.UNIDADE'
      Size = 5
    end
    object QESERRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA.QUANTIDADE'
    end
    object QESERRADAVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'ENTRADA.VALUNITARIO'
    end
    object QESERRADAVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'ENTRADA.VALTOTAL'
    end
    object QESERRADAALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADA.ALIQICMS'
    end
    object QESERRADACODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'ENTRADA.CODIGOPRODUTO'
    end
    object QESERRADASITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'ENTRADA.SITUACAO_TRIBUTARIA'
    end
    object QESERRADATOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'ENTRADA.TOTALPRODUTO'
    end
    object QESERRADADATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'ENTRADA.DATALANCAMENTO'
    end
    object QESERRADANFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'ENTRADA.NFNUMERO'
    end
    object QESERRADAESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'ENTRADA.ESSENCIATIPO'
      Size = 30
    end
    object QESERRADACODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'ENTRADA.CODIGOESSENCIA'
    end
    object QESERRADATRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
      Origin = 'ENTRADA.TRANSFORMADO'
    end
    object QESERRADATORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Origin = 'ENTRADA.TORALOTEESSENCIA'
      Size = 30
    end
    object QESERRADASITUACAO: TFloatField
      FieldName = 'SITUACAO'
      Origin = 'ENTRADA.SITUACAO'
    end
    object QESERRADASITDATA: TDateTimeField
      FieldName = 'SITDATA'
      Origin = 'ENTRADA.SITDATA'
    end
    object QESERRADASITHORA: TDateTimeField
      FieldName = 'SITHORA'
      Origin = 'ENTRADA.SITHORA'
    end
    object QESERRADAFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'ENTRADA.FORNECEDOR'
      Size = 50
    end
    object QESERRADACPF: TFloatField
      FieldName = 'CPF'
      Origin = 'ENTRADA.CPF'
      Required = True
    end
    object QESERRADAINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'ENTRADA.INSCRICAO'
      Size = 15
    end
    object QESERRADAOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ENTRADA.OBS'
      Size = 100
    end
    object QESERRADACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ENTRADA.COMPRIMENTO'
    end
    object QESERRADALARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'ENTRADA.LARGURA'
    end
    object QESERRADAEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'ENTRADA.EXPESSURA'
    end
    object QESERRADATOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'ENTRADA.TOTALM3'
    end
    object QESERRADAPLAQUETA: TFloatField
      FieldName = 'PLAQUETA'
      Origin = 'ENTRADA.PLAQUETA'
    end
    object QESERRADAOBSCODIGO: TFloatField
      FieldName = 'OBSCODIGO'
      Origin = 'ENTRADA.OBSCODIGO'
    end
  end
  object DQSERRADA_DISCRIMINACAO: TDataSource
    DataSet = QSERRADA_DISCRIMINACAO
    Left = 352
    Top = 992
  end
  object QSERRADA_DISCRIMINACAO: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADA_SERRADA_DISCRIMINACAO')
    Left = 512
    Top = 992
    object QSERRADA_DISCRIMINACAOCODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODDISCRIMINACAO'
    end
    object QSERRADA_DISCRIMINACAOCODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOFORNECEDOR'
    end
    object QSERRADA_DISCRIMINACAOESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.UNIDADE'
      Size = 5
    end
    object QSERRADA_DISCRIMINACAOQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.QUANTIDADE'
    end
    object QSERRADA_DISCRIMINACAOVALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.VALUNITARIO'
    end
    object QSERRADA_DISCRIMINACAOVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.VALTOTAL'
    end
    object QSERRADA_DISCRIMINACAOALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ALIQICMS'
    end
    object QSERRADA_DISCRIMINACAOCODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOPRODUTO'
    end
    object QSERRADA_DISCRIMINACAOSITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITUACAO_TRIBUTARIA'
    end
    object QSERRADA_DISCRIMINACAOTOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TOTALPRODUTO'
    end
    object QSERRADA_DISCRIMINACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.DATALANCAMENTO'
    end
    object QSERRADA_DISCRIMINACAONFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.NFNUMERO'
    end
    object QSERRADA_DISCRIMINACAOESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.ESSENCIATIPO'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOCODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CODIGOESSENCIA'
    end
    object QSERRADA_DISCRIMINACAOTRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TRANSFORMADO'
    end
    object QSERRADA_DISCRIMINACAOTORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.TORALOTEESSENCIA'
      Size = 30
    end
    object QSERRADA_DISCRIMINACAOSITUACAO: TFloatField
      FieldName = 'SITUACAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITUACAO'
    end
    object QSERRADA_DISCRIMINACAOSITDATA: TDateTimeField
      FieldName = 'SITDATA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITDATA'
    end
    object QSERRADA_DISCRIMINACAOSITHORA: TDateTimeField
      FieldName = 'SITHORA'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.SITHORA'
    end
    object QSERRADA_DISCRIMINACAOFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.FORNECEDOR'
      Size = 50
    end
    object QSERRADA_DISCRIMINACAOCPF: TFloatField
      FieldName = 'CPF'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.CPF'
      Required = True
    end
    object QSERRADA_DISCRIMINACAOINSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
      Origin = 'ENTRADA_SERRADA_DISCRIMINACAO.INSCRICAO'
    end
  end
  object DS_DISCRIMINACAONF1: TDataSource
    DataSet = T_DISCRIMINACAONF1
    Left = 352
    Top = 904
  end
  object T_DISCRIMINACAONF1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ENTRADA_TOROS_DISCRIMINACAONF'
    Left = 504
    Top = 904
    object T_DISCRIMINACAONF1CODDISCRIMINACAO: TIntegerField
      FieldName = 'CODDISCRIMINACAO'
    end
    object T_DISCRIMINACAONF1CODIGOFORNECEDOR: TFloatField
      FieldName = 'CODIGOFORNECEDOR'
    end
    object T_DISCRIMINACAONF1ESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONF1UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object T_DISCRIMINACAONF1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object T_DISCRIMINACAONF1VALUNITARIO: TFloatField
      FieldName = 'VALUNITARIO'
    end
    object T_DISCRIMINACAONF1VALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object T_DISCRIMINACAONF1ALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
    end
    object T_DISCRIMINACAONF1CODIGOPRODUTO: TFloatField
      FieldName = 'CODIGOPRODUTO'
    end
    object T_DISCRIMINACAONF1SITUACAO_TRIBUTARIA: TIBStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
    end
    object T_DISCRIMINACAONF1TOTALPRODUTO: TFloatField
      FieldName = 'TOTALPRODUTO'
    end
    object T_DISCRIMINACAONF1DATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object T_DISCRIMINACAONF1NFNUMERO: TFloatField
      FieldName = 'NFNUMERO'
    end
    object T_DISCRIMINACAONF1ESSENCIATIPO: TIBStringField
      FieldName = 'ESSENCIATIPO'
      Size = 30
    end
    object T_DISCRIMINACAONF1CODIGOESSENCIA: TFloatField
      FieldName = 'CODIGOESSENCIA'
    end
    object T_DISCRIMINACAONF1TRANSFORMADO: TFloatField
      FieldName = 'TRANSFORMADO'
    end
    object T_DISCRIMINACAONF1TORALOTEESSENCIA: TIBStringField
      FieldName = 'TORALOTEESSENCIA'
      Size = 30
    end
    object T_DISCRIMINACAONF1SITUACAO: TFloatField
      FieldName = 'SITUACAO'
    end
    object T_DISCRIMINACAONF1SITDATA: TDateTimeField
      FieldName = 'SITDATA'
    end
    object T_DISCRIMINACAONF1SITHORA: TDateTimeField
      FieldName = 'SITHORA'
    end
    object T_DISCRIMINACAONF1FORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object T_DISCRIMINACAONF1CPF: TFloatField
      FieldName = 'CPF'
    end
    object T_DISCRIMINACAONF1COMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object T_DISCRIMINACAONF1DIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object T_DISCRIMINACAONF1DIAMETRO1: TFloatField
      FieldName = 'DIAMETRO1'
    end
    object T_DISCRIMINACAONF1QUALIDADE: TIBStringField
      FieldName = 'QUALIDADE'
      Size = 30
    end
    object T_DISCRIMINACAONF1DIAMETROMEDIA: TFloatField
      FieldName = 'DIAMETROMEDIA'
    end
    object T_DISCRIMINACAONF1OBS: TIBStringField
      FieldName = 'OBS'
      Size = 200
    end
    object T_DISCRIMINACAONF1INSCRICAO: TIBStringField
      FieldName = 'INSCRICAO'
    end
  end
  object TROMANEIOSERRADA: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    StoreDefs = True
    TableName = 'ROMANEIO'
    Left = 248
    Top = 400
    object TROMANEIOSERRADACODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
    end
    object TROMANEIOSERRADANF: TFloatField
      FieldName = 'NF'
    end
    object TROMANEIOSERRADADATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TROMANEIOSERRADAPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object TROMANEIOSERRADAESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Size = 30
    end
    object TROMANEIOSERRADAQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '0.0000'
    end
    object TROMANEIOSERRADACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADALARGURA: TFloatField
      FieldName = 'LARGURA'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADAEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADATOTALM3: TFloatField
      FieldName = 'TOTALM3'
      DisplayFormat = '0.0000'
    end
    object TROMANEIOSERRADAVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADAVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      DisplayFormat = '0.00'
    end
    object TROMANEIOSERRADACODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
    end
    object TROMANEIOSERRADACODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
    end
    object TROMANEIOSERRADACODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object TROMANEIOSERRADAUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Size = 8
    end
    object TROMANEIOSERRADACODSUBPRODUTO: TFloatField
      FieldName = 'CODSUBPRODUTO'
    end
  end
  object DS_ROMANEIOSERRADA: TDataSource
    DataSet = TROMANEIOSERRADA
    Left = 88
    Top = 400
  end
  object DSTSUBPRODUTOS: TDataSource
    DataSet = TSUBPRODUTOS
    Left = 88
    Top = 280
  end
  object TSUBPRODUTOS: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'GRAUIND'
        DataType = ftInteger
      end
      item
        Name = 'NOMEGRAU'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'SUBPRODUTO'
        Fields = 'NOMEGRAU'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SUBPRODUTO'
    Left = 232
    Top = 280
    object TSUBPRODUTOSGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
    end
    object TSUBPRODUTOSNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Size = 50
    end
  end
  object DSQSUBPRODUTOS: TDataSource
    DataSet = QSUBPRODUTOS
    Left = 88
    Top = 216
  end
  object QSUBPRODUTOS: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from SUBPRODUTO')
    Left = 232
    Top = 216
    object QSUBPRODUTOSGRAUIND: TIntegerField
      FieldName = 'GRAUIND'
      Origin = 'SUBPRODUTO.GRAUIND'
    end
    object QSUBPRODUTOSNOMEGRAU: TIBStringField
      FieldName = 'NOMEGRAU'
      Origin = 'SUBPRODUTO.NOMEGRAU'
      Size = 50
    end
  end
  object DS_QROMANEIOSERRADODISC: TDataSource
    DataSet = QROMANEIOSERRADADISC
    Left = 488
    Top = 280
  end
  object QROMANEIOSERRADADISC: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ROMANEIO')
    Left = 608
    Top = 344
    object QROMANEIOSERRADADISCCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODEMPRESA'
    end
    object QROMANEIOSERRADADISCNF: TFloatField
      FieldName = 'NF'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.NF'
    end
    object QROMANEIOSERRADADISCDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.DATA'
    end
    object QROMANEIOSERRADADISCPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.PRODUTO'
      Size = 30
    end
    object QROMANEIOSERRADADISCESSENCIA: TIBStringField
      FieldName = 'ESSENCIA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.ESSENCIA'
      Size = 30
    end
    object QROMANEIOSERRADADISCQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.QUANTIDADE'
    end
    object QROMANEIOSERRADADISCCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.COMPRIMENTO'
    end
    object QROMANEIOSERRADADISCLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.LARGURA'
    end
    object QROMANEIOSERRADADISCEXPESSURA: TFloatField
      FieldName = 'EXPESSURA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.EXPESSURA'
    end
    object QROMANEIOSERRADADISCTOTALM3: TFloatField
      FieldName = 'TOTALM3'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.TOTALM3'
    end
    object QROMANEIOSERRADADISCVLUNITARIO: TFloatField
      FieldName = 'VLUNITARIO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.VLUNITARIO'
    end
    object QROMANEIOSERRADADISCVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.VLTOTAL'
    end
    object QROMANEIOSERRADADISCCODLANCAMENTO: TIntegerField
      FieldName = 'CODLANCAMENTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODLANCAMENTO'
    end
    object QROMANEIOSERRADADISCCODESSENCIA: TFloatField
      FieldName = 'CODESSENCIA'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODESSENCIA'
    end
    object QROMANEIOSERRADADISCCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODPRODUTO'
    end
    object QROMANEIOSERRADADISCUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.UNIDADE'
      Size = 8
    end
    object QROMANEIOSERRADADISCCODSUBPRODUTO: TFloatField
      FieldName = 'CODSUBPRODUTO'
      Origin = 'ROMANEIO_SERRADA_DISCRIMINACAO.CODSUBPRODUTO'
    end
  end
  object DS_SAIDAFECHAMENTO: TDataSource
    DataSet = TSAIDAFECHAMENTO
    Left = 88
    Top = 128
  end
  object TSAIDAFECHAMENTO: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SAIDA_FECHAMENTO'
    Left = 232
    Top = 128
    object TSAIDAFECHAMENTOCODIGOLANCAMENTO: TIntegerField
      FieldName = 'CODIGOLANCAMENTO'
    end
    object TSAIDAFECHAMENTOCODIGOCLIENTE: TFloatField
      FieldName = 'CODIGOCLIENTE'
    end
    object TSAIDAFECHAMENTONF: TFloatField
      FieldName = 'NF'
    end
    object TSAIDAFECHAMENTODATA: TDateTimeField
      FieldName = 'DATA'
    end
    object TSAIDAFECHAMENTOQTDE_PRODUTOS: TFloatField
      FieldName = 'QTDE_PRODUTOS'
    end
    object TSAIDAFECHAMENTOTOTALM3: TFloatField
      FieldName = 'TOTALM3'
    end
    object TSAIDAFECHAMENTOVAL_TOT_PRODUTOS: TFloatField
      FieldName = 'VAL_TOT_PRODUTOS'
    end
    object TSAIDAFECHAMENTOFORMAPAGAMENTO: TIBStringField
      FieldName = 'FORMAPAGAMENTO'
      Size = 8
    end
    object TSAIDAFECHAMENTODESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '0.00'
    end
    object TSAIDAFECHAMENTOVAL_TOT_NOTA: TFloatField
      FieldName = 'VAL_TOT_NOTA'
      DisplayFormat = '0.00'
    end
    object TSAIDAFECHAMENTOPARCELA1: TDateTimeField
      FieldName = 'PARCELA1'
    end
    object TSAIDAFECHAMENTOPARCELA2: TDateTimeField
      FieldName = 'PARCELA2'
    end
    object TSAIDAFECHAMENTOMOEDA: TIBStringField
      FieldName = 'MOEDA'
      Size = 10
    end
    object TSAIDAFECHAMENTONUMEROPARCELAS: TFloatField
      FieldName = 'NUMEROPARCELAS'
    end
    object TSAIDAFECHAMENTOINTERVALOPARCELAS: TFloatField
      FieldName = 'INTERVALOPARCELAS'
    end
    object TSAIDAFECHAMENTOPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
  end
end
