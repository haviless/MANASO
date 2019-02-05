object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 176
  Top = 234
  Height = 728
  Width = 1273
  object cdsCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuotas'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 420
    Top = 5
  end
  object dsCuotas: TwwDataSource
    DataSet = cdsCuotas
    Left = 420
    Top = 17
  end
  object cdsSolicitud: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSolicitud'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'CREMTOPAG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 478
    Top = 5
  end
  object dsSolicitud: TwwDataSource
    DataSet = cdsSolicitud
    Left = 478
    Top = 17
  end
  object cdsAso: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 532
    Top = 5
  end
  object dsAso: TwwDataSource
    DataSet = cdsAso
    Left = 532
    Top = 17
  end
  object cdsUsuarios: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USERID'
    Params = <>
    ProviderName = 'dspUsuario'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 66
    Top = 5
  end
  object dsUsuarios: TwwDataSource
    DataSet = cdsUsuarios
    Left = 634
    Top = 73
  end
  object cdsGrupos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 136
    Top = 5
  end
  object dsGrupos: TwwDataSource
    DataSet = cdsGrupos
    Left = 136
    Top = 17
  end
  object cdsMGrupo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMGrupo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 196
    Top = 5
  end
  object dsMGrupo: TwwDataSource
    DataSet = cdsMGrupo
    Left = 196
    Top = 17
  end
  object cdsAcceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcceso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 259
    Top = 5
  end
  object dsAcceso: TwwDataSource
    DataSet = cdsAcceso
    Left = 259
    Top = 17
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 308
    Top = 5
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 308
    Top = 17
  end
  object cdsUSES: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUSES'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 460
    Top = 443
  end
  object dsUSES: TwwDataSource
    DataSet = cdsUSES
    Left = 463
    Top = 457
  end
  object cdsUPro: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 580
    Top = 5
  end
  object dsUPro: TwwDataSource
    DataSet = cdsUPro
    Left = 581
    Top = 17
  end
  object cdsUPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1279
    Top = 9
  end
  object dsUPago: TwwDataSource
    DataSet = cdsUPago
    Left = 1281
    Top = 21
  end
  object cdsTResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 16
    Top = 57
  end
  object dsTResol: TwwDataSource
    DataSet = cdsTResol
    Left = 19
    Top = 69
  end
  object cdsTPension: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTPension'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 71
    Top = 65
  end
  object dsTPension: TwwDataSource
    DataSet = cdsTPension
    Left = 72
    Top = 77
  end
  object cdsTAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 392
    Top = 65
  end
  object dsTAso: TwwDataSource
    DataSet = cdsTAso
    Left = 394
    Top = 77
  end
  object cdsSAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1031
    Top = 6
  end
  object dsSAso: TwwDataSource
    DataSet = cdsSAso
    Left = 1032
    Top = 18
  end
  object cdsCEdu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCEdu'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1080
    Top = 7
  end
  object dsCEdu: TwwDataSource
    DataSet = cdsCEdu
    Left = 1080
    Top = 19
  end
  object cdsCAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1176
    Top = 9
  end
  object dsCAso: TwwDataSource
    DataSet = cdsCAso
    Left = 1176
    Top = 21
  end
  object cdsTUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTUSE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1226
    Top = 9
  end
  object dsTUSE: TwwDataSource
    DataSet = cdsTUSE
    Left = 1226
    Top = 21
  end
  object cdsCViv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCViv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1128
    Top = 9
  end
  object dsCViv: TwwDataSource
    DataSet = cdsCViv
    Left = 1128
    Top = 21
  end
  object cdsDpto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDpto'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 123
    Top = 127
  end
  object dsDpto: TwwDataSource
    DataSet = cdsDpto
    Left = 123
    Top = 143
  end
  object dsTVia: TwwDataSource
    DataSet = cdsTVia
    Left = 169
    Top = 143
  end
  object cdsTVia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTVia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 169
    Top = 127
  end
  object cdsDist: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDist'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 215
    Top = 127
  end
  object dsDist: TwwDataSource
    DataSet = cdsDist
    Left = 216
    Top = 143
  end
  object dsTZona: TwwDataSource
    DataSet = cdsTZona
    Left = 135
    Top = 77
  end
  object cdsTZona: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTZona'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 132
    Top = 65
  end
  object cdsBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 185
    Top = 65
  end
  object dsBcos: TwwDataSource
    DataSet = cdsBcos
    Left = 185
    Top = 77
  end
  object dsTDoc: TwwDataSource
    DataSet = cdsTDoc
    Left = 238
    Top = 77
  end
  object cdsTDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTDoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 235
    Top = 65
  end
  object dsUbigeo: TwwDataSource
    DataSet = cdsUbigeo
    Left = 292
    Top = 77
  end
  object cdsUbigeo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 289
    Top = 65
  end
  object dsProvin: TwwDataSource
    DataSet = cdsProvin
    Left = 23
    Top = 143
  end
  object cdsProvin: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProvin'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 21
    Top = 127
  end
  object dsEstCiv: TwwDataSource
    DataSet = cdsEstCiv
    Left = 76
    Top = 143
  end
  object cdsEstCiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEstCiv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 73
    Top = 127
  end
  object cdsPais: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPais'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 263
    Top = 127
  end
  object dsPais: TwwDataSource
    DataSet = cdsPais
    Left = 263
    Top = 143
  end
  object dsGradoI: TwwDataSource
    DataSet = cdsGradoI
    Left = 311
    Top = 143
  end
  object cdsGradoI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoI'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 311
    Top = 127
  end
  object dsGradoA: TwwDataSource
    DataSet = cdsGradoA
    Left = 367
    Top = 143
  end
  object cdsGradoA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoA'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 367
    Top = 127
  end
  object dsProf: TwwDataSource
    DataSet = cdsProf
    Left = 414
    Top = 143
  end
  object cdsProf: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProf'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 422
    Top = 127
  end
  object dsTRela: TwwDataSource
    DataSet = cdsTRela
    Left = 462
    Top = 143
  end
  object cdsTRela: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRela'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 470
    Top = 127
  end
  object dsSitCta: TwwDataSource
    DataSet = cdsSitCta
    Left = 516
    Top = 143
  end
  object cdsSitCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 524
    Top = 127
  end
  object dsInt: TwwDataSource
    DataSet = cdsInt
    Left = 569
    Top = 143
  end
  object cdsInt: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvInt'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 577
    Top = 127
  end
  object dsTipAmort: TwwDataSource
    DataSet = cdsTipAmort
    Left = 629
    Top = 143
  end
  object cdsTipAmort: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipAmort'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 629
    Top = 127
  end
  object dsTipCuota: TwwDataSource
    DataSet = cdsTipCuota
    Left = 24
    Top = 206
  end
  object cdsTipCuota: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCalcInt'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 24
    Top = 192
  end
  object dsTipCre: TwwDataSource
    DataSet = cdsTipCre
    Left = 83
    Top = 206
  end
  object cdsTipCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'TIPCREINT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREFLAT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMORA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPERI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRESEG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREGADM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOMP'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 83
    Top = 192
  end
  object dsTipDesem: TwwDataSource
    DataSet = cdsTipDesem
    Left = 146
    Top = 206
  end
  object cdsTipDesem: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipDesem'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 146
    Top = 192
  end
  object dsSitCre: TwwDataSource
    DataSet = cdsSitCre
    Left = 207
    Top = 206
  end
  object cdsSitCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 207
    Top = 192
  end
  object dsSexo: TwwDataSource
    DataSet = cdsSexo
    Left = 260
    Top = 206
  end
  object cdsSexo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 260
    Top = 192
  end
  object dsAgencias: TwwDataSource
    DataSet = cdsAgencias
    Left = 316
    Top = 206
  end
  object cdsAgencias: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgencias'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 316
    Top = 192
  end
  object dsTMoneda: TwwDataSource
    DataSet = cdsTMoneda
    Left = 435
    Top = 206
  end
  object cdsTMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 435
    Top = 192
  end
  object dsFPago: TwwDataSource
    DataSet = cdsFPago
    Left = 376
    Top = 206
  end
  object cdsFPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 376
    Top = 192
  end
  object dsConsulta: TwwDataSource
    DataSet = cdsConsulta
    Left = 502
    Top = 206
  end
  object cdsConsulta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvConsulta'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 503
    Top = 192
  end
  object cdsAsociados: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 575
    Top = 192
  end
  object dsAsociados: TwwDataSource
    DataSet = cdsAsociados
    Left = 575
    Top = 206
  end
  object cdsTGarantia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGarantia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 781
    Top = 253
  end
  object dsTGarantia: TwwDataSource
    DataSet = cdsTGarantia
    Left = 781
    Top = 268
  end
  object cdsGarantia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGarantia'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 716
    Top = 253
  end
  object dsGarantia: TwwDataSource
    DataSet = cdsGarantia
    Left = 716
    Top = 268
  end
  object cdsRecursos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRecursos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 848
    Top = 253
  end
  object dsRecursos: TwwDataSource
    DataSet = cdsRecursos
    Left = 848
    Top = 268
  end
  object cdsListaCred: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvListaCred'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'LISTAVIG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 913
    Top = 253
  end
  object dsListaCred: TwwDataSource
    DataSet = cdsListaCred
    Left = 913
    Top = 268
  end
  object cdsRefTipoCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRefTipoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 982
    Top = 253
  end
  object dsRefTipoCre: TwwDataSource
    DataSet = cdsRefTipoCre
    Left = 982
    Top = 268
  end
  object cdsAsoX: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAsoX'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 658
    Top = 317
  end
  object dsAsoX: TwwDataSource
    DataSet = cdsAsoX
    Left = 658
    Top = 331
  end
  object cdsUSESx: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'prvUSESx'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 277
    Top = 253
  end
  object dsUSESx: TwwDataSource
    DataSet = cdsUSESx
    Left = 277
    Top = 268
  end
  object cdsUSESy: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'prvUSESy'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 640
    Top = 192
  end
  object dsUSESy: TwwDataSource
    DataSet = cdsUSESy
    Left = 640
    Top = 206
  end
  object cdsAbonoCuotas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCuotas'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'FNABONO;CheckBox;S;N')
    ValidateWithMask = True
    Left = 717
    Top = 317
  end
  object dsAbonoCuotas: TwwDataSource
    DataSet = cdsAbonoCuotas
    Left = 719
    Top = 331
  end
  object cdsAbonoCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAbonoCreditos'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'MTOULTPAGO'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOSOL'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRENUMCUO'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRECUOTA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREPERGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOOTOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CREMTOPAG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CUOTAINI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'CRECAPPAG'#9'#######0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 804
    Top = 317
  end
  object dsAbonoCreditos: TwwDataSource
    DataSet = cdsAbonoCreditos
    Left = 806
    Top = 331
  end
  object cdsFormaPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFormaPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 568
    Top = 253
  end
  object dsFormaPago: TwwDataSource
    DataSet = cdsFormaPago
    Left = 568
    Top = 268
  end
  object cdsExtornoPCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvExtornoPCab'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 35
    Top = 317
  end
  object dsExtornoPCab: TwwDataSource
    DataSet = cdsExtornoPCab
    Left = 35
    Top = 331
  end
  object cdsAsociados1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 112
    Top = 380
  end
  object dsAsociados1: TwwDataSource
    DataSet = cdsAsociados1
    Left = 112
    Top = 394
  end
  object cdsTMone: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 179
    Top = 380
  end
  object dsTmone: TwwDataSource
    DataSet = cdsTMone
    Left = 179
    Top = 394
  end
  object cdsReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 181
    Top = 317
  end
  object dsreclamo: TwwDataSource
    DataSet = cdsReclamo
    Left = 181
    Top = 331
  end
  object cdsUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUse'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 237
    Top = 317
  end
  object dsUSE: TwwDataSource
    DataSet = cdsUSE
    Left = 237
    Top = 331
  end
  object cdsTransCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 295
    Top = 317
  end
  object dstransCre: TwwDataSource
    DataSet = cdsTransCre
    Left = 295
    Top = 331
  end
  object cdsReporteExtorno: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrvExtornoPDet'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 377
    Top = 317
  end
  object dsReporteExtorno: TwwDataSource
    DataSet = cdsReporteExtorno
    Left = 377
    Top = 331
  end
  object cdsExtornoPDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrvExtornoPDet'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 890
    Top = 317
  end
  object dsExtornoPDet: TwwDataSource
    DataSet = cdsExtornoPDet
    Left = 890
    Top = 331
  end
  object cdsTCredito: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTCredito'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 643
    Top = 253
  end
  object dsTCredito: TwwDataSource
    DataSet = cdsTCredito
    Left = 643
    Top = 268
  end
  object cdsReclamoDCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoDCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 353
    Top = 253
  end
  object dsReclamoDCre: TwwDataSource
    DataSet = cdsReclamoDCre
    Left = 353
    Top = 268
  end
  object cdsReclamo1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 212
    Top = 253
  end
  object dsReclamo1: TwwDataSource
    DataSet = cdsReclamo1
    Left = 213
    Top = 268
  end
  object cdscarta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 152
    Top = 253
  end
  object dscarta: TwwDataSource
    DataSet = cdscarta
    Left = 152
    Top = 268
  end
  object cdsCbcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCbcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 97
    Top = 253
  end
  object dsCbcos: TwwDataSource
    DataSet = cdsCbcos
    Left = 99
    Top = 268
  end
  object cdsReclamoMotiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclMotivo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 445
    Top = 253
  end
  object dsReclamoMotiv: TwwDataSource
    DataSet = cdsReclamoMotiv
    Left = 445
    Top = 268
  end
  object cdsDevolucionCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevolucionCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 633
    Top = 443
  end
  object dsDevolucionCre: TwwDataSource
    DataSet = cdsDevolucionCre
    Left = 634
    Top = 457
  end
  object cdsTransDevol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransDevol'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 717
    Top = 443
  end
  object dsTransDevol: TwwDataSource
    DataSet = cdsTransDevol
    Left = 718
    Top = 457
  end
  object cdsTransacciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransaccion'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 563
    Top = 506
  end
  object dsTransacciones: TwwDataSource
    DataSet = cdsTransacciones
    Left = 563
    Top = 520
  end
  object cdsAgenciaBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAgenciaBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 799
    Top = 443
  end
  object dsAgenciaBco: TwwDataSource
    DataSet = cdsAgenciaBco
    Left = 800
    Top = 457
  end
  object cdsParam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvParam'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'PAPOVENC'#9'[*2[#]]'#9'T'#9'F'
      'PFINTMOR'#9'{S,N}'#9'T'#9'F'
      'PFINCOMP'#9'{S,N}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 637
    Top = 506
  end
  object dsParam: TwwDataSource
    DataSet = cdsParam
    Left = 637
    Top = 520
  end
  object cdsDeltaSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 1057
    Top = 631
  end
  object dsDeltaSet: TwwDataSource
    DataSet = cdsDeltaSet
    Left = 1057
    Top = 646
  end
  object cdsResultSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 547
    Top = 644
  end
  object cdsNotaAbono: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaAbono'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 484
    Top = 570
  end
  object dsNotaAbono: TwwDataSource
    DataSet = cdsNotaAbono
    Left = 484
    Top = 583
  end
  object cdsOficio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOficio'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 17
    Top = 570
  end
  object dsOficio: TwwDataSource
    DataSet = cdsOficio
    Left = 17
    Top = 583
  end
  object cdsReporte1: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 
      '                                        ccccccccccccccccccc     ' +
      '   cccvvvvvvvvvvvvvvvcv                                         ' +
      '                                                                ' +
      '                                                               '
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 601
    Top = 317
  end
  object dsReporte1: TwwDataSource
    DataSet = cdsReporte1
    Left = 601
    Top = 331
  end
  object cdsCreditoCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCreditoCab'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 537
    Top = 317
  end
  object dscreditocab: TwwDataSource
    DataSet = cdsCreditoCab
    Left = 537
    Top = 331
  end
  object cdsCia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 513
    Top = 253
  end
  object dsCia: TwwDataSource
    DataSet = cdsCia
    Left = 513
    Top = 268
  end
  object cdsTRFCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFCreditos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 33
    Top = 380
  end
  object dsTRFCreditos: TwwDataSource
    DataSet = cdsTRFCreditos
    Left = 33
    Top = 394
  end
  object cdsTRFAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 113
    Top = 317
  end
  object cdsTRFCronog: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFCronog'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 249
    Top = 380
  end
  object cdsTRFPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRFPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 393
    Top = 380
  end
  object dsTRFAso: TwwDataSource
    DataSet = cdsTRFAso
    Left = 113
    Top = 331
  end
  object dsTRFCronog: TwwDataSource
    DataSet = cdsTRFCronog
    Left = 251
    Top = 394
  end
  object dsTRFPagos: TwwDataSource
    DataSet = cdsTRFPagos
    Left = 396
    Top = 394
  end
  object cdsClientes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 194
    Top = 570
  end
  object dsClientes: TwwDataSource
    DataSet = cdsClientes
    Left = 194
    Top = 583
  end
  object cdsPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 538
    Top = 380
  end
  object dsPagos: TwwDataSource
    DataSet = cdsPagos
    Left = 538
    Top = 394
  end
  object cdsPrestamos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrestamos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 471
    Top = 380
  end
  object dsPrestamos: TwwDataSource
    DataSet = cdsPrestamos
    Left = 473
    Top = 394
  end
  object cdsDetPagos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetPagos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 666
    Top = 380
  end
  object dsDetPagos: TwwDataSource
    DataSet = cdsDetPagos
    Left = 666
    Top = 394
  end
  object cdsDLabo: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'prvDLabo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 18
    Top = 443
  end
  object dsDLabo: TwwDataSource
    DataSet = cdsDLabo
    Left = 19
    Top = 457
  end
  object cdsDFam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDFam'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 73
    Top = 443
  end
  object dsDFam: TwwDataSource
    DataSet = cdsDFam
    Left = 74
    Top = 457
  end
  object cdsResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 127
    Top = 443
  end
  object dsResol: TwwDataSource
    DataSet = cdsResol
    Left = 127
    Top = 457
  end
  object cdsCtasBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 184
    Top = 443
  end
  object dsCtasBco: TwwDataSource
    DataSet = cdsCtasBco
    Left = 185
    Top = 457
  end
  object dsCuentaEst: TwwDataSource
    DataSet = cdsCuentaEst
    Left = 253
    Top = 457
  end
  object cdsCuentaEst: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvCuentaEst'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 253
    Top = 443
  end
  object cdsDSocioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDSocioE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 323
    Top = 443
  end
  object dsDSocioE: TwwDataSource
    DataSet = cdsDSocioE
    Left = 325
    Top = 457
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 324
    Top = 380
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 326
    Top = 394
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 68
    Top = 570
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 68
    Top = 583
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 158
    Top = 506
  end
  object dsQry2: TwwDataSource
    DataSet = cdsQry2
    Left = 156
    Top = 520
  end
  object cdsBcoAgencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 269
    Top = 570
  end
  object dsBcoAgencia: TwwDataSource
    DataSet = cdsBcoAgencia
    Left = 269
    Top = 583
  end
  object cdsRelCapCuo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelCapCuo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 27
    Top = 506
  end
  object dsRelCapCuo: TwwDataSource
    DataSet = cdsRelCapCuo
    Left = 27
    Top = 520
  end
  object cdsTipCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipCre'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    PictureMasks.Strings = (
      'TIPCREINT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREFLAT'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMORA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREMMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPGRA'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPERI'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMIN'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECMAX'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRESEG'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREGADM'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCREPOR'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'TIPCRECOMP'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 98
    Top = 506
  end
  object dsTipCreA: TwwDataSource
    DataSet = cdsTipCreA
    Left = 98
    Top = 520
  end
  object cdsListaCreA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvListaCred'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'LISTAVIG'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 217
    Top = 506
  end
  object dsListaCreA: TwwDataSource
    DataSet = cdsListaCreA
    Left = 217
    Top = 520
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 924
    Top = 443
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 925
    Top = 457
  end
  object dsOfDes: TwwDataSource
    DataSet = cdsOfdes
    Left = 331
    Top = 520
  end
  object cdsSaldoTlfnGrab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 405
    Top = 506
  end
  object dsSaldoTlfnGrab: TwwDataSource
    DataSet = cdsSaldoTlfnGrab
    Left = 407
    Top = 520
  end
  object cdsRegCxP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 605
    Top = 380
  end
  object dsRegCxP: TwwDataSource
    DataSet = cdsRegCxP
    Left = 605
    Top = 394
  end
  object cdsOfdes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOfDes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 331
    Top = 506
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 277
    Top = 506
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 277
    Top = 520
  end
  object dsInconsis: TwwDataSource
    Left = 857
    Top = 642
  end
  object qryDBF: TwwQuery
    DatabaseName = 'FOXSOL'
    ValidateWithMask = True
    Left = 806
    Top = 640
  end
  object cdsUser: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUser'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 847
    Top = 506
  end
  object dsUser: TwwDataSource
    DataSet = cdsUser
    Left = 847
    Top = 520
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 133
    Top = 635
  end
  object dsQry5: TwwDataSource
    DataSet = cdsQry5
    Left = 133
    Top = 649
  end
  object cdsQry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 332
    Top = 635
  end
  object cdsQry7: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 383
    Top = 635
  end
  object dsQry6: TwwDataSource
    DataSet = cdsQry6
    Left = 335
    Top = 649
  end
  object dsQry7: TwwDataSource
    DataSet = cdsQry7
    Left = 385
    Top = 649
  end
  object cdsCNTCaja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 407
    Top = 570
  end
  object dsCNTCaja: TwwDataSource
    DataSet = cdsCNTCaja
    Left = 408
    Top = 583
  end
  object cdsEgrCaja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 459
    Top = 317
  end
  object dsEgrCaja: TwwDataSource
    DataSet = cdsEgrCaja
    Left = 459
    Top = 331
  end
  object cdsRec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 511
    Top = 443
  end
  object dsRec: TwwDataSource
    DataSet = cdsRec
    Left = 512
    Top = 457
  end
  object cdsUsuarioAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 706
    Top = 506
  end
  object cdsEstado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 487
    Top = 506
  end
  object cdsClientes2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    RemoteServer = DCOM1
    OnReconcileError = cdsCuotasReconcileError
    ValidateWithMask = True
    Left = 126
    Top = 570
  end
  object dsClientes2: TwwDataSource
    DataSet = cdsClientes2
    Left = 126
    Top = 583
  end
  object cdsMovCnt1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 783
    Top = 506
  end
  object cdsPadre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 683
    Top = 5
  end
  object dsPadre: TwwDataSource
    DataSet = cdsPadre
    Left = 683
    Top = 17
  end
  object cdsHijo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanDet'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 633
    Top = 5
  end
  object dsHijo: TwwDataSource
    DataSet = cdsHijo
    Left = 633
    Top = 17
  end
  object cdsNieto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrestamos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 342
    Top = 65
  end
  object dsNieto: TwwDataSource
    DataSet = cdsNieto
    Left = 342
    Top = 77
  end
  object cdsCuentas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 964
    Top = 317
  end
  object dsCuentas: TwwDataSource
    DataSet = cdsCuentas
    Left = 964
    Top = 331
  end
  object cdsClaCre: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 341
    Top = 570
  end
  object dsMovCnt1: TwwDataSource
    DataSet = cdsMovCnt1
    Left = 783
    Top = 520
  end
  object WS: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 691
    Top = 639
  end
  object ExcelBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 639
    Top = 642
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 747
    Top = 639
  end
  object cdsQry20: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 560
    Top = 443
  end
  object dsQry20: TwwDataSource
    DataSet = cdsQry20
    Left = 560
    Top = 457
  end
  object cdsQry22: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 732
    Top = 380
  end
  object dsQry22: TwwDataSource
    DataSet = cdsQry22
    Left = 732
    Top = 394
  end
  object cdsQry21: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1025
    Top = 193
  end
  object dsQry21: TwwDataSource
    DataSet = cdsQry21
    Left = 1027
    Top = 208
  end
  object cdsDetalle: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutdisk'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'MONTOTOT'#9'###,###,##0.00'#9'T'#9'F')
    ValidateWithMask = True
    Left = 16
    Top = 635
  end
  object dsDetalle: TwwDataSource
    DataSet = cdsDetalle
    Left = 16
    Top = 649
  end
  object cdsSobrino: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 76
    Top = 635
  end
  object dsSobrino: TwwDataSource
    DataSet = cdsSobrino
    Left = 76
    Top = 649
  end
  object dsCtaIndResAnoAnt: TwwDataSource
    DataSet = cdsCtaIndResAnoAnt
    Left = 947
    Top = 394
  end
  object cdsCtaIndResAnoAnt: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 946
    Top = 380
  end
  object cdsQry8: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 434
    Top = 635
  end
  object dsQry8: TwwDataSource
    DataSet = cdsQry8
    Left = 437
    Top = 649
  end
  object cdsQry24: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 786
    Top = 380
  end
  object dsQry24: TwwDataSource
    DataSet = cdsQry24
    Left = 786
    Top = 394
  end
  object cdsQry19: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1027
    Top = 380
  end
  object dsQry19: TwwDataSource
    DataSet = cdsQry19
    Left = 1028
    Top = 393
  end
  object cdsQry25: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1024
    Top = 317
  end
  object dsQry25: TwwDataSource
    DataSet = cdsQry25
    Left = 1024
    Top = 333
  end
  object cdsAsociado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 701
    Top = 192
  end
  object dsAsociado: TwwDataSource
    DataSet = cdsAsociado
    Left = 701
    Top = 206
  end
  object cdsCueInd: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CAPACU'
        DataType = ftFloat
      end
      item
        Name = 'INTERES'
        DataType = ftFloat
      end
      item
        Name = 'BONUS'
        DataType = ftFloat
      end
      item
        Name = 'APORTE'
        DataType = ftFloat
      end
      item
        Name = 'DEVOLUC'
        DataType = ftFloat
      end
      item
        Name = 'TOTACU'
        DataType = ftFloat
      end
      item
        Name = 'APOOFI'
        DataType = ftFloat
      end
      item
        Name = 'DEV'
        DataType = ftFloat
      end
      item
        Name = 'NIV'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 992
    Top = 634
    Data = {
      E70000009619E0BD01000000180000000C000000000003000000E70003414E4F
      0100490000000100055749445448020002001900034D45530100490000000100
      055749445448020002001400065553454E4F4D01004900000001000557494454
      4802000200140006434150414355080004000000000007494E54455245530800
      04000000000005424F4E555308000400000000000641504F5254450800040000
      000000074445564F4C5543080004000000000006544F54414355080004000000
      00000641504F4F46490800040000000000034445560800040000000000034E49
      5608000400000000000000}
  end
  object dsCueInd: TDataSource
    DataSet = cdsCueInd
    Left = 990
    Top = 672
  end
  object cdsExpLiq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 867
    Top = 443
  end
  object dsExpLiq: TwwDataSource
    DataSet = cdsExpLiq
    Left = 868
    Top = 457
  end
  object cdsOficina: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 553
    Top = 570
  end
  object dsOficina: TwwDataSource
    DataSet = cdsOficina
    Left = 555
    Top = 583
  end
  object cdsDbgCPass: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 904
    Top = 570
  end
  object dsDbgCPass: TwwDataSource
    DataSet = cdsDbgCPass
    Left = 907
    Top = 583
  end
  object cdsCPass3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 617
    Top = 570
  end
  object dsCPass3: TwwDataSource
    DataSet = cdsCPass3
    Left = 618
    Top = 583
  end
  object cdsPass3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 772
    Top = 570
  end
  object dsPass3: TwwDataSource
    DataSet = cdsPass3
    Left = 775
    Top = 583
  end
  object cdscliente3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 833
    Top = 570
  end
  object dscliente3: TwwDataSource
    DataSet = cdscliente3
    Left = 836
    Top = 583
  end
  object cdsCreditos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 361
    Top = 5
  end
  object dsCreditos: TwwDataSource
    DataSet = cdsCreditos
    Left = 361
    Top = 17
  end
  object cdsPadron1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 744
    Top = 5
  end
  object dsPadron1: TwwDataSource
    DataSet = cdsPadron1
    Left = 744
    Top = 17
  end
  object cdsPadron2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 808
    Top = 5
  end
  object dsPadron2: TwwDataSource
    DataSet = cdsPadron2
    Left = 808
    Top = 17
  end
  object cdsInconsistencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 442
    Top = 65
  end
  object dsInconsistencia: TwwDataSource
    DataSet = cdsInconsistencia
    Left = 443
    Top = 77
  end
  object cdsPadrones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 750
    Top = 127
  end
  object dsPadrones: TwwDataSource
    DataSet = cdsPadrones
    Left = 750
    Top = 143
  end
  object cdsEstPadron: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 996
    Top = 127
  end
  object dsEstPadron: TwwDataSource
    DataSet = cdsEstPadron
    Left = 996
    Top = 143
  end
  object cdsCarLab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 690
    Top = 127
  end
  object dsCarLab: TwwDataSource
    DataSet = cdsCarLab
    Left = 690
    Top = 143
  end
  object cdsRegPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 817
    Top = 127
  end
  object dsRegPen: TwwDataSource
    DataSet = cdsRegPen
    Left = 817
    Top = 143
  end
  object cdsPlanilla: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 932
    Top = 127
  end
  object dsPlanilla: TwwDataSource
    DataSet = cdsPlanilla
    Left = 932
    Top = 143
  end
  object cdsSitLab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 515
    Top = 65
  end
  object dsSitLab: TwwDataSource
    DataSet = cdsSitLab
    Left = 515
    Top = 77
  end
  object cdsUgelPadron: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 580
    Top = 65
  end
  object dsUgelPadron: TwwDataSource
    DataSet = cdsUgelPadron
    Left = 580
    Top = 77
  end
  object cdsTipSer: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 876
    Top = 127
  end
  object dsTipSer: TwwDataSource
    DataSet = cdsTipSer
    Left = 873
    Top = 143
  end
  object cdsCtaIndEstad: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 888
    Top = 192
  end
  object dsCtaIndEstad: TwwDataSource
    DataSet = cdsCtaIndEstad
    Left = 889
    Top = 206
  end
  object cdsCtaIndCab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 853
    Top = 380
  end
  object dsCtaIndCab: TwwDataSource
    DataSet = cdsCtaIndCab
    Left = 853
    Top = 394
  end
  object cdsCtaIndAnoAct: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 914
    Top = 506
  end
  object dsCtaIndAnoAct: TwwDataSource
    DataSet = cdsCtaIndAnoAct
    Left = 917
    Top = 520
  end
  object cdsCtaIndApoCes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 695
    Top = 570
  end
  object dsCtaIndApoCes: TwwDataSource
    DataSet = cdsCtaIndApoCes
    Left = 697
    Top = 583
  end
  object cdsPropTel1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 768
    Top = 192
  end
  object dsPropTel1: TwwDataSource
    DataSet = cdsPropTel1
    Left = 768
    Top = 207
  end
  object cdsPropTel2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 962
    Top = 192
  end
  object dsPropTel2: TwwDataSource
    DataSet = cdsPropTel2
    Left = 962
    Top = 206
  end
  object cdsLeyPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1108
    Top = 628
  end
  object dsLeyPen: TwwDataSource
    DataSet = cdsLeyPen
    Left = 1116
    Top = 642
  end
  object cdsUnidadPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 973
    Top = 444
  end
  object dsUnidadPago: TwwDataSource
    DataSet = cdsUnidadPago
    Left = 973
    Top = 457
  end
  object cdsUnidadProceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1008
    Top = 506
  end
  object dsUnidadProceso: TwwDataSource
    DataSet = cdsUnidadProceso
    Left = 1008
    Top = 520
  end
  object cdsUgel: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 825
    Top = 193
  end
  object dsUgel: TwwDataSource
    DataSet = cdsUgel
    Left = 824
    Top = 209
  end
  object cdsDepartamento: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 985
    Top = 570
  end
  object dsDepartamento: TwwDataSource
    DataSet = cdsDepartamento
    Left = 985
    Top = 583
  end
  object dsFsc01: TwwDataSource
    DataSet = cdsFsc01
    Left = 868
    Top = 17
  end
  object cdsFsc01: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 868
    Top = 5
  end
  object cdsFsc02: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 924
    Top = 5
  end
  object dsFsc02: TwwDataSource
    DataSet = cdsFsc02
    Left = 924
    Top = 17
  end
  object cdsFsc03: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 980
    Top = 5
  end
  object dsFsc03: TwwDataSource
    DataSet = cdsFsc03
    Left = 980
    Top = 17
  end
  object cdsAutDesONP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 198
    Top = 635
  end
  object dsAutDesONP: TwwDataSource
    DataSet = cdsAutDesONP
    Left = 198
    Top = 649
  end
  object cdsCorrONP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 272
    Top = 635
  end
  object dsCorrONP: TwwDataSource
    DataSet = cdsCorrONP
    Left = 272
    Top = 649
  end
  object cdsAutDesReg: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 31
    Top = 253
  end
  object dsAutDesReg: TwwDataSource
    DataSet = cdsAutDesReg
    Left = 32
    Top = 267
  end
  object cdsExpCenEdu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 395
    Top = 443
  end
  object dsExpCenEdu: TwwDataSource
    DataSet = cdsExpCenEdu
    Left = 395
    Top = 457
  end
  object DCOM1: TSocketConnection
    ServerGUID = '{CA1AB464-3325-4EAF-ADC4-B326CD27A8D4}'
    ServerName = 'SrvAplAso.srvDMAso'
    Left = 15
    Top = 7
  end
  object cdsTipTel02: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1159
    Top = 129
  end
  object dsTipTel02: TwwDataSource
    DataSet = cdsTipTel02
    Left = 1161
    Top = 141
  end
  object cdsTipTel01: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1106
    Top = 129
  end
  object dsTipTel01: TwwDataSource
    DataSet = cdsTipTel01
    Left = 1106
    Top = 141
  end
  object cdsUsuarioBloq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1124
    Top = 565
  end
  object dsUsuarioBloq: TwwDataSource
    DataSet = cdsUsuarioBloq
    Left = 1124
    Top = 577
  end
  object cdsCamposValida: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1047
    Top = 513
  end
  object dsCamposValida: TwwDataSource
    DataSet = cdsCamposValida
    Left = 1049
    Top = 525
  end
  object cdsOfidesAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1031
    Top = 441
  end
  object dsOfidesAso: TwwDataSource
    DataSet = cdsOfidesAso
    Left = 1033
    Top = 453
  end
  object cdsVAL_DAT_ASO: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamoCre'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1055
    Top = 569
  end
  object dsVAL_DAT_ASO: TwwDataSource
    DataSet = cdsVAL_DAT_ASO
    Left = 1057
    Top = 581
  end
  object cdsValRegAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1165
    Top = 620
  end
  object dsValRegAso: TwwDataSource
    DataSet = cdsValRegAso
    Left = 1165
    Top = 633
  end
  object cdsCodLeyPen: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1229
    Top = 620
  end
  object dsCodLeyPen: TwwDataSource
    DataSet = cdsCodLeyPen
    Left = 1229
    Top = 633
  end
  object dsTipoGes: TwwDataSource
    DataSet = cdsTipoGes
    Left = 696
    Top = 88
  end
  object cdsTipoGes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 688
    Top = 72
  end
  object dsEstadoAsig: TwwDataSource
    DataSet = cdsEstadoAsig
    Left = 752
    Top = 80
  end
  object cdsEstadoAsig: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 744
    Top = 72
  end
  object dsResponsable: TwwDataSource
    DataSet = cdsResponsable
    Left = 832
    Top = 88
  end
  object cdsResponsable: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 816
    Top = 72
  end
  object dsConsultaCartera: TwwDataSource
    DataSet = cdsConsultaCartera
    Left = 888
    Top = 88
  end
  object cdsConsultaCartera: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 880
    Top = 72
  end
  object dsColegio: TwwDataSource
    DataSet = cdsColegio
    Left = 960
    Top = 88
  end
  object cdsColegio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 944
    Top = 72
  end
  object dsTemp: TwwDataSource
    DataSet = cdsTemp
    Left = 1000
    Top = 80
  end
  object cdsTemp: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 992
    Top = 72
  end
  object dsConsultaHoja: TwwDataSource
    DataSet = cdsConsultaHoja
    Left = 1048
    Top = 80
  end
  object cdsConsultaHoja: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1040
    Top = 72
  end
  object cdsConsultaHojaDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1088
    Top = 72
  end
  object dsConsultaHojaDet: TwwDataSource
    DataSet = cdsConsultaHojaDet
    Left = 1096
    Top = 80
  end
  object cdsResultado: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1160
    Top = 72
  end
  object dsResultado: TwwDataSource
    DataSet = cdsResultado
    Left = 1168
    Top = 80
  end
  object cdsConsultaResult: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1216
    Top = 72
  end
  object dsConsultaResult: TwwDataSource
    DataSet = cdsConsultaResult
    Left = 1224
    Top = 80
  end
  object dsNivelCono: TwwDataSource
    DataSet = cdsNivelCono
    Left = 1062
    Top = 136
  end
  object cdsNivelCono: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1054
    Top = 128
  end
  object dsNivelSat: TwwDataSource
    DataSet = cdsNivelSat
    Left = 1006
    Top = 136
  end
  object cdsNivelSat: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlantilla'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 998
    Top = 128
  end
  object cdsFiltro1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1087
    Top = 193
  end
  object dsFiltro1: TwwDataSource
    DataSet = cdsFiltro1
    Left = 1089
    Top = 205
  end
  object cdsFiltro2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1127
    Top = 193
  end
  object dsFiltro2: TwwDataSource
    DataSet = cdsFiltro2
    Left = 1129
    Top = 205
  end
  object cdsFiltro3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1175
    Top = 193
  end
  object dsFiltro3: TwwDataSource
    DataSet = cdsFiltro3
    Left = 1177
    Top = 205
  end
  object cdsFiltro4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1215
    Top = 193
  end
  object dsFiltro4: TwwDataSource
    DataSet = cdsFiltro4
    Left = 1217
    Top = 205
  end
  object cdsFiltro5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1263
    Top = 193
  end
  object dsFiltro5: TwwDataSource
    DataSet = cdsFiltro5
    Left = 1265
    Top = 205
  end
  object cdsConsulta1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1041
    Top = 257
  end
  object dsConsulta1: TwwDataSource
    DataSet = cdsConsulta1
    Left = 1043
    Top = 269
  end
  object cdsConsulta2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1129
    Top = 257
  end
  object dsConsulta2: TwwDataSource
    DataSet = cdsConsulta2
    Left = 1131
    Top = 269
  end
  object cdsConsulta3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1185
    Top = 257
  end
  object dsConsulta3: TwwDataSource
    DataSet = cdsConsulta3
    Left = 1187
    Top = 269
  end
  object cdsConsulta4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1249
    Top = 257
  end
  object dsConsulta4: TwwDataSource
    DataSet = cdsConsulta4
    Left = 1251
    Top = 269
  end
  object cdsConsulta5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1297
    Top = 257
  end
  object dsConsulta5: TwwDataSource
    DataSet = cdsConsulta5
    Left = 1299
    Top = 269
  end
  object cdsTemp2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1087
    Top = 313
  end
  object dsTemp2: TwwDataSource
    DataSet = cdsTemp2
    Left = 1089
    Top = 325
  end
  object cdsTemp3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1111
    Top = 313
  end
  object dsTemp3: TwwDataSource
    DataSet = cdsTemp3
    Left = 1113
    Top = 325
  end
  object cdsDocPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem9'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'TMONID;CustomEdit;dblcMoneda'
      'DETCPAG;CustomEdit;dbeTC'
      'DEMTOLOC;CustomEdit;dbeMPL'
      'DEMTOEXT;CustomEdit;dbeMPE')
    ValidateWithMask = True
    Left = 1224
    Top = 560
  end
  object dsDocPago: TwwDataSource
    DataSet = cdsDocPago
    Left = 1225
    Top = 573
  end
  object cdsRepCCIDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1124
    Top = 374
  end
  object dsRepCCIDet: TwwDataSource
    DataSet = cdsRepCCIDet
    Left = 1124
    Top = 391
  end
  object cdsRepCCI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1125
    Top = 442
  end
  object dsRepCCI: TwwDataSource
    DataSet = cdsRepCCI
    Left = 1125
    Top = 456
  end
  object cdsCodPrestacion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem9'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1213
    Top = 380
  end
  object dsCodPrestacion: TwwDataSource
    DataSet = cdsCodPrestacion
    Left = 1213
    Top = 393
  end
  object cdsAutCADAPS: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTem10'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1213
    Top = 468
  end
  object dsAutCADAPS: TwwDataSource
    DataSet = cdsAutCADAPS
    Left = 1213
    Top = 481
  end
  object cdsResolucionHist: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1247
    Top = 128
  end
  object dsResolucionHist: TwwDataSource
    DataSet = cdsResolucionHist
    Left = 1287
    Top = 134
  end
  object dsCabLiq: TwwDataSource
    DataSet = cdsCabLiq
    Left = 1458
    Top = 48
  end
  object cdsCabLiq: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1450
    Top = 7
  end
  object cdsQry26: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1431
    Top = 494
  end
  object dsQry26: TwwDataSource
    DataSet = cdsQry26
    Left = 1431
    Top = 512
  end
  object cdsQry23: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1436
    Top = 558
  end
  object dsQry23: TwwDataSource
    DataSet = cdsQry23
    Left = 1435
    Top = 576
  end
  object cdsBanco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1435
    Top = 624
  end
  object dsBanco: TwwDataSource
    DataSet = cdsBanco
    Left = 1435
    Top = 640
  end
  object cdsTipoMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1436
    Top = 625
  end
  object dsTipoMoneda: TwwDataSource
    DataSet = cdsTipoMoneda
    Left = 1436
    Top = 642
  end
  object dsFonSol: TDataSource
    DataSet = cdsFonSol
    Left = 1389
    Top = 66
  end
  object cdsFonSol: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUM_DEU'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NRO_REF_FSC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FEC_APL_FSC'
        DataType = ftDate
      end
      item
        Name = 'IMP_COB_FSC'
        DataType = ftCurrency
      end
      item
        Name = 'IMP_SAL_FSC'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvQry'
    StoreDefs = True
    Left = 1390
    Top = 36
  end
  object cdsFonSolDet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1439
    Top = 675
  end
  object dsFonSolDet: TwwDataSource
    DataSet = cdsFonSolDet
    Left = 1438
    Top = 690
  end
  object cdsTipBenef: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1380
    Top = 411
  end
  object dsTipBenef: TwwDataSource
    DataSet = cdsTipBenef
    Left = 1380
    Top = 428
  end
  object cdsAgBco: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsAgBcoIndex2'
        Fields = 'AGENBCODES'
      end>
    IndexName = 'cdsAgBcoIndex2'
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    StoreDefs = True
    OnReconcileError = cdsMaestCartasReconcileError
    ValidateWithMask = True
    Left = 1377
    Top = 344
  end
  object dsAgBco: TwwDataSource
    DataSet = cdsAgBco
    Left = 1377
    Top = 360
  end
  object cdsQry15: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'PEDIDO;CustomEdit;dblcdPedido'
      'THRES;CustomEdit;dbeTHRes'
      'PESOCAB;CustomEdit;dbePesoCab'
      'PESOCABINS;CustomEdit;dbePesoCabIns')
    ValidateWithMask = True
    Left = 1376
    Top = 487
  end
  object dsQry15: TwwDataSource
    DataSet = cdsQry15
    Left = 1376
    Top = 503
  end
  object dsQry10: TwwDataSource
    DataSet = cdsQry10
    Left = 1475
    Top = 266
  end
  object cdsQry10: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'PEDIDO;CustomEdit;dblcdPedido'
      'THRES;CustomEdit;dbeTHRes'
      'PESOCAB;CustomEdit;dbePesoCab'
      'PESOCABINS;CustomEdit;dbePesoCabIns')
    ValidateWithMask = True
    Left = 1475
    Top = 246
  end
  object cdsMaestCartas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1380
    Top = 552
  end
  object dsMaestCartas: TwwDataSource
    DataSet = cdsMaestCartas
    Left = 1380
    Top = 568
  end
  object cdsDetCartas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 1375
    Top = 615
  end
  object dsDetCartas: TwwDataSource
    DataSet = cdsDetCartas
    Left = 1376
    Top = 632
  end
  object dsDetCalLiq: TDataSource
    DataSet = cdsDetCalLiq
    Left = 1405
    Top = 136
  end
  object cdsDetCalLiq: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPDES'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1421
    Top = 128
    Data = {
      770000009619E0BD010000001800000004000000000003000000770004444553
      430100490000000100055749445448020002003C00054D4F4E544F0800040000
      0000000647524142415201004900000001000557494454480200020001000654
      495044455301004900000001000557494454480200020002000000}
  end
  object dsDetDev: TDataSource
    DataSet = cdsDetDev
    Left = 1413
    Top = 205
  end
  object cdsDetDev: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1415
    Top = 189
    Data = {
      750000009619E0BD010000001800000004000000000003000000750004444553
      430100490000000100055749445448020002003C00054D4F4E544F0800040000
      000000045449504F010049000000010005574944544802000200010006475241
      42415201004900000001000557494454480200020001000000}
  end
  object dsDetDes: TDataSource
    DataSet = cdsDetDes
    Left = 1415
    Top = 266
  end
  object cdsDetDes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CREDID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SDOACT'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1416
    Top = 251
    Data = {
      9F0000009619E0BD0100000018000000060000000000030000009F0004444553
      430100490000000100055749445448020002005A00054D4F4E544F0800040000
      000000045449504F010049000000010005574944544802000200140006435245
      4449440100490000000100055749445448020002000F00064752414241520100
      4900000001000557494454480200020001000653444F41435408000400000000
      000000}
  end
  object dsForPag: TDataSource
    DataSet = cdsForPag
    Left = 1432
    Top = 334
  end
  object cdsForPag: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AGENBCOID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSLDNIBEN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSNOMBRE'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'PVSLNCTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'APENOMTUT'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DOCIDETUT'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FECNACMEN'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'APEPATCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APEMATCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CODRELCOB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'APEPATTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APEMATTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NOMTUT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DIRDOMCOB'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CODZIPCOB'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TELFIJCOB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TELMOVCOB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'APECASCOB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMAILCOB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MOVCOB'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1431
    Top = 320
    Data = {
      140300009619E0BD01000000180000001B000000000003000000140304444553
      430100490000000100055749445448020002009600054D4F4E544F0800040000
      0000000A504F5243454E54414A45080004000000000008464F52504147494401
      004900000001000557494454480200020002000742414E434F49440100490000
      000100055749445448020002000200094147454E42434F494401004900000001
      000557494454480200020008000A5056534C444E4942454E0100490000000100
      055749445448020002000800095056534E4F4D42524501004900000001000557
      49445448020002005A00085056534C4E43544101004900000001000557494454
      48020002000A00094150454E4F4D545554010049000000010005574944544802
      0002005A0009444F434944455455540100490000000100055749445448020002
      000800094645434E41434D454E0100490000000100055749445448020002000A
      0006475241424152010049000000010005574944544802000200010009415045
      504154434F420100490000000100055749445448020002001E00094150454D41
      54434F420100490000000100055749445448020002001E00064E4F4D434F4201
      00490000000100055749445448020002001E0009434F4452454C434F42010049
      0000000100055749445448020002000200094150455041545455540100490000
      000100055749445448020002001E00094150454D415454555401004900000001
      00055749445448020002001E00064E4F4D545554010049000000010005574944
      5448020002001E0009444952444F4D434F420100490000000100055749445448
      02000200FA0009434F445A4950434F4201004900000001000557494454480200
      020006000954454C46494A434F42010049000000010005574944544802000200
      0F000954454C4D4F56434F420100490000000100055749445448020002000F00
      09415045434153434F420100490000000100055749445448020002001E000845
      4D41494C434F420100490000000100055749445448020002001400064D4F5643
      4F4201004900000001000557494454480200020014000000}
  end
  object dsRetJud: TDataSource
    DataSet = cdsRetJud
    Left = 1439
    Top = 402
  end
  object cdsRetJud: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'FORPAGID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AGENBCOID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSLDNIBEN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PVSNOMBRE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PVSLNCTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1440
    Top = 383
    Data = {
      200100009619E0BD01000000180000000A000000000003000000200104444553
      430100490000000100055749445448020002009600054D4F4E544F0800040000
      0000000A504F5243454E54414A45080004000000000008464F52504147494401
      004900000001000557494454480200020002000742414E434F49440100490000
      000100055749445448020002000200094147454E42434F494401004900000001
      000557494454480200020008000A5056534C444E4942454E0100490000000100
      055749445448020002000800095056534E4F4D42524501004900000001000557
      49445448020002003C00085056534C4E43544101004900000001000557494454
      48020002000A0006475241424152010049000000010005574944544802000200
      01000000}
  end
  object dsObs: TDataSource
    DataSet = cdsObs
    Left = 1471
    Top = 455
  end
  object cdsObs: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESC'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'GRABAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1462
    Top = 448
    Data = {
      5C0000009619E0BD0100000018000000030000000000030000005C0004444553
      43010049000000010005574944544802000200FA00054D4F4E544F0800040000
      0000000647524142415201004900000001000557494454480200020001000000}
  end
  object dsestapo: TDataSource
    DataSet = cdsestapo
    Left = 1297
    Top = 715
  end
  object cdsestapo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'APOANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'APOMES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'APOOFI'
        DataType = ftFloat
      end
      item
        Name = 'APOREC'
        DataType = ftFloat
      end
      item
        Name = 'DEV'
        DataType = ftFloat
      end
      item
        Name = 'NIV'
        DataType = ftFloat
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1296
    Top = 700
    Data = {
      B90000009619E0BD010000001800000008000000000003000000B9000641504F
      414E4F01004900000001000557494454480200020004000641504F4D45530100
      490000000100055749445448020002000200065553454E4F4D01004900000001
      000557494454480200020014000641504F4F464908000400000000000641504F
      5245430800040000000000034445560800040000000000034E49560800040000
      000000034D455301004900000001000557494454480200020014000000}
  end
  object cdsQryRegalo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 24
    Top = 617
  end
  object dsQryRegalo: TwwDataSource
    DataSet = cdsQryRegalo
    Left = 24
    Top = 631
  end
  object pprPlaAutDesUni: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\rsanchezc.DERRAMA\Desktop\Nueva carpeta\rpCartaAutDes.r' +
      'tm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 424
    Top = 504
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 280194
      mmPrintPosition = 0
      object ppShape289: TppShape
        UserName = 'Shape289'
        mmHeight = 127529
        mmLeft = 10583
        mmTop = 59796
        mmWidth = 180446
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 47361
        mmTop = 99219
        mmWidth = 139436
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 47361
        mmTop = 104246
        mmWidth = 139436
        BandType = 0
      end
      object ppShape263: TppShape
        UserName = 'Shape263'
        mmHeight = 5555
        mmLeft = 56621
        mmTop = 82021
        mmWidth = 131763
        BandType = 0
      end
      object ppMemo26: TppMemo
        UserName = 'Memo1'
        Caption = 'E'#209'ORES :'#13#10#13#10'PRESENTE.-'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
            'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
            ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
            '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
            'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEN, seg'#250'n el siguient' +
            'e detalle:')
        Transparent = True
        mmHeight = 20109
        mmLeft = 11377
        mmTop = 38894
        mmWidth = 179388
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'AUTORIZACI'#211'N DE DESCUENTO MEDIANTE LA PLANILLA '#218'NICA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 11377
        mmTop = 14817
        mmWidth = 180446
        BandType = 0
      end
      object pplApeNomDNI: TppLabel
        UserName = 'lApeNomDNI'
        AutoSize = False
        Caption = 
          'Yo, ____________________________________________________________' +
          '________________________________________________________________' +
          '______________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 10848
        mmTop = 27781
        mmWidth = 179388
        BandType = 0
      end
      object ppLabel310: TppLabel
        UserName = 'Label310'
        AutoSize = False
        Caption = '1. DATOS LABORALES DEL QUE AUTORIZA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 61383
        mmWidth = 116152
        BandType = 0
      end
      object ppLabel312: TppLabel
        UserName = 'Label312'
        Caption = '(marcar):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 71702
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel311: TppLabel
        UserName = 'Label311'
        Caption = 'Condici'#243'n laboral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 66675
        mmWidth = 29898
        BandType = 0
      end
      object pplconlabnom1: TppLabel
        UserName = 'Label1'
        Caption = 'Nombrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 66675
        mmWidth = 22753
        BandType = 0
      end
      object pplconlabcon1: TppLabel
        UserName = 'Label2'
        Caption = 'Contratado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 71702
        mmWidth = 22753
        BandType = 0
      end
      object pplconlabpen1: TppLabel
        UserName = 'Label3'
        Caption = 'Pensionista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 66411
        mmTop = 76729
        mmWidth = 22753
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label317'
        Caption = 'IGED (DRE/UGEL)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5555
        mmLeft = 16669
        mmTop = 82021
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label3101'
        AutoSize = False
        Caption = '2. DATOS DE LA ENTIDAD CON QUIEN SE ASUME EL COMPROMISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 91281
        mmWidth = 151342
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label314'
        Caption = 'Raz'#243'n Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 99748
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label315'
        Caption = 'RUC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 104775
        mmWidth = 9525
        BandType = 0
      end
      object pplUGEL: TppLabel
        UserName = 'lconlabpen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56621
        mmTop = 82550
        mmWidth = 130980
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label318'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 92075
        mmTop = 99748
        mmWidth = 49742
        BandType = 0
      end
      object ppLabel319: TppLabel
        UserName = 'Label319'
        Caption = '20136424867'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 103981
        mmTop = 104775
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel320: TppLabel
        UserName = 'Label320'
        Caption = 'Marcar grupo de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 110067
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel321: TppLabel
        UserName = 'Label3201'
        Caption = 'descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 17198
        mmTop = 114829
        mmWidth = 17992
        BandType = 0
      end
      object ppShape264: TppShape
        UserName = 'Shape264'
        mmHeight = 13229
        mmLeft = 47361
        mmTop = 109802
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel322: TppLabel
        UserName = 'Label322'
        Caption = 'Sindicales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 48154
        mmTop = 111654
        mmWidth = 19315
        BandType = 0
      end
      object ppShape265: TppShape
        UserName = 'Shape265'
        mmHeight = 13229
        mmLeft = 74348
        mmTop = 109802
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel323: TppLabel
        UserName = 'Label323'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 74877
        mmTop = 110861
        mmWidth = 7144
        BandType = 0
      end
      object ppShape266: TppShape
        UserName = 'Shape266'
        mmHeight = 13229
        mmLeft = 82550
        mmTop = 109802
        mmWidth = 27252
        BandType = 0
      end
      object ppShape267: TppShape
        UserName = 'Shape267'
        mmHeight = 13229
        mmLeft = 109538
        mmTop = 109802
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel324: TppLabel
        UserName = 'Label324'
        Caption = 'Fondo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 83344
        mmTop = 111654
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel325: TppLabel
        UserName = 'Label325'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 110067
        mmTop = 111654
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel326: TppLabel
        UserName = 'Label326'
        Caption = 'Bienestar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 83344
        mmTop = 116417
        mmWidth = 16404
        BandType = 0
      end
      object ppShape268: TppShape
        UserName = 'Shape268'
        mmHeight = 13229
        mmLeft = 117740
        mmTop = 109802
        mmWidth = 27252
        BandType = 0
      end
      object ppShape269: TppShape
        UserName = 'Shape269'
        mmHeight = 13229
        mmLeft = 143140
        mmTop = 109802
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label328'
        Caption = 'Cooperativa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 119327
        mmTop = 111654
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label329'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 143669
        mmTop = 111654
        mmWidth = 7144
        BandType = 0
      end
      object ppShape270: TppShape
        UserName = 'Shape270'
        mmHeight = 13229
        mmLeft = 151342
        mmTop = 109802
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'Label327'
        Caption = 'Superv. SBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 151342
        mmTop = 111654
        mmWidth = 23813
        BandType = 0
      end
      object ppShape271: TppShape
        UserName = 'Shape271'
        mmHeight = 13229
        mmLeft = 178330
        mmTop = 109802
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label331'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 178859
        mmTop = 111654
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label3202'
        Caption = 
          'En caso de ser Fondo de Bienestar, marcar el concepto de atenci'#243 +
          'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 17198
        mmTop = 123561
        mmWidth = 118534
        BandType = 0
      end
      object ppShape272: TppShape
        UserName = 'Shape272'
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 128588
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel332: TppLabel
        UserName = 'Label332'
        Caption = 'Alimentaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 47890
        mmTop = 129117
        mmWidth = 24077
        BandType = 0
      end
      object ppShape273: TppShape
        UserName = 'Shape273'
        mmHeight = 5556
        mmLeft = 82021
        mmTop = 128588
        mmWidth = 26723
        BandType = 0
      end
      object ppShape274: TppShape
        UserName = 'Shape274'
        mmHeight = 5556
        mmLeft = 108479
        mmTop = 133879
        mmWidth = 8467
        BandType = 0
      end
      object ppShape275: TppShape
        UserName = 'Shape275'
        mmHeight = 5556
        mmLeft = 73819
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppShape276: TppShape
        UserName = 'Shape276'
        mmHeight = 5556
        mmLeft = 116681
        mmTop = 128588
        mmWidth = 26723
        BandType = 0
      end
      object ppShape277: TppShape
        UserName = 'Shape277'
        mmHeight = 5556
        mmLeft = 73819
        mmTop = 133879
        mmWidth = 8467
        BandType = 0
      end
      object ppShape278: TppShape
        UserName = 'Shape278'
        mmHeight = 5556
        mmLeft = 151342
        mmTop = 128588
        mmWidth = 27252
        BandType = 0
      end
      object ppShape262: TppShape
        UserName = 'Shape262'
        mmHeight = 5556
        mmLeft = 47361
        mmTop = 133879
        mmWidth = 26723
        BandType = 0
      end
      object ppShape279: TppShape
        UserName = 'Shape279'
        mmHeight = 5556
        mmLeft = 143140
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppShape280: TppShape
        UserName = 'Shape280'
        mmHeight = 5556
        mmLeft = 82021
        mmTop = 133879
        mmWidth = 26723
        BandType = 0
      end
      object ppShape281: TppShape
        UserName = 'Shape281'
        mmHeight = 5556
        mmLeft = 108479
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel333: TppLabel
        UserName = 'Label333'
        Caption = 'Salud'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 129117
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel334: TppLabel
        UserName = 'Label334'
        Caption = 'Educaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 117211
        mmTop = 129117
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel335: TppLabel
        UserName = 'Label335'
        Caption = 'Vivienda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 151871
        mmTop = 129117
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel336: TppLabel
        UserName = 'Label336'
        Caption = 'Esparcimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 47890
        mmTop = 134409
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel337: TppLabel
        UserName = 'Label337'
        Caption = 'Sepelio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82550
        mmTop = 134409
        mmWidth = 16669
        BandType = 0
      end
      object ppShape282: TppShape
        UserName = 'Shape282'
        mmHeight = 5556
        mmLeft = 178330
        mmTop = 128588
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel338: TppLabel
        UserName = 'Label338'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 129117
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel339: TppLabel
        UserName = 'Label339'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 109009
        mmTop = 134409
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel340: TppLabel
        UserName = 'Label340'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 129117
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel341: TppLabel
        UserName = 'Label3401'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 74613
        mmTop = 134409
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel342: TppLabel
        UserName = 'Label342'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 143669
        mmTop = 129117
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel343: TppLabel
        UserName = 'Label343'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 179123
        mmTop = 129117
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel344: TppLabel
        UserName = 'Label344'
        AutoSize = False
        Caption = '3. DETALLE DEL COMPROMISO Y DESCUENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 11377
        mmTop = 143140
        mmWidth = 124354
        BandType = 0
      end
      object TppLabel
        UserName = 'Label4'
        Caption = 
          'Aportes obligatorios mensuales (sindicales, socios cooperativos,' +
          ' asociaciones, etc.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 25665
        mmTop = 151607
        mmWidth = 144526
        BandType = 0
      end
      object ppLabel346: TppLabel
        UserName = 'Label346'
        Caption = 'Inicio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 23548
        mmTop = 157163
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel347: TppLabel
        UserName = 'Label347'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 34396
        mmTop = 157163
        mmWidth = 36449
        BandType = 0
      end
      object ppLabel348: TppLabel
        UserName = 'Label348'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 72496
        mmTop = 157163
        mmWidth = 20955
        BandType = 0
      end
      object ppShape283: TppShape
        UserName = 'Shape2801'
        mmHeight = 5556
        mmLeft = 102129
        mmTop = 157163
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label349'
        Caption = 'Aporte mensual (S/)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 102659
        mmTop = 157692
        mmWidth = 34671
        BandType = 0
      end
      object ppShape284: TppShape
        UserName = 'Shape284'
        mmHeight = 5556
        mmLeft = 137054
        mmTop = 157163
        mmWidth = 40481
        BandType = 0
      end
      object pplApomen: TppLabel
        UserName = 'lApomen'
        Caption = '0.5% UIT vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 137584
        mmTop = 157692
        mmWidth = 29845
        BandType = 0
      end
      object ppLabel351: TppLabel
        UserName = 'Label351'
        Caption = '(    )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 163777
        mmWidth = 7027
        BandType = 0
      end
      object ppLabel352: TppLabel
        UserName = 'Label352'
        Caption = 'Inicio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 23548
        mmTop = 169334
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel355: TppLabel
        UserName = 'Label355'
        Caption = 'T'#233'rmino'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 96044
        mmTop = 169334
        mmWidth = 15081
        BandType = 0
      end
      object ppShape285: TppShape
        UserName = 'Shape285'
        mmHeight = 5555
        mmLeft = 18521
        mmTop = 175155
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel358: TppLabel
        UserName = 'Label358'
        Caption = 'Dscto. Mensual S/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 20108
        mmTop = 175948
        mmWidth = 28490
        BandType = 0
      end
      object ppShape286: TppShape
        UserName = 'Shape286'
        mmHeight = 5555
        mmLeft = 54769
        mmTop = 175155
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel359: TppLabel
        UserName = 'Label359'
        Caption = 'Nro. Cuotas: ____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 74348
        mmTop = 175948
        mmWidth = 28490
        BandType = 0
      end
      object ppShape287: TppShape
        UserName = 'Shape287'
        mmHeight = 5555
        mmLeft = 106098
        mmTop = 175155
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel360: TppLabel
        UserName = 'Label360'
        Caption = 'Total a descontar (S/)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 107686
        mmTop = 175948
        mmWidth = 33443
        BandType = 0
      end
      object ppShape288: TppShape
        UserName = 'Shape288'
        mmHeight = 5555
        mmLeft = 142346
        mmTop = 175155
        mmWidth = 20902
        BandType = 0
      end
      object ppMemo21: TppMemo
        UserName = 'Memo21'
        Caption = 
          'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
          'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
          ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
          '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
          'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEM, seg'#250'n el siguient' +
          'e detalle:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            '(   ) Se ha verificado del promedio de las 3 '#250'ltimas remuneracio' +
            'nes mensuales y el presente compromiso est'#225' dentro de los alcanc' +
            'es del 50% del monto neto.')
        Transparent = True
        mmHeight = 10848
        mmLeft = 11377
        mmTop = 188648
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape290: TppShape
        UserName = 'Shape290'
        mmHeight = 30692
        mmLeft = 11642
        mmTop = 200819
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel361: TppLabel
        UserName = 'Label361'
        Caption = 'Huella'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 17992
        mmTop = 232040
        mmWidth = 13229
        BandType = 0
      end
      object pplLugyFec: TppLabel
        UserName = 'lLugyFec'
        AutoSize = False
        Caption = 'Lugar y Fecha : ____________________________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 38629
        mmTop = 200819
        mmWidth = 125677
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 75142
        mmTop = 225425
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel363: TppLabel
        UserName = 'Label363'
        AutoSize = False
        Caption = 'Firma del que autoriza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 84931
        mmTop = 225955
        mmWidth = 41275
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16404
        mmTop = 253471
        mmWidth = 61120
        BandType = 0
      end
      object ppLabel366: TppLabel
        UserName = 'Label366'
        AutoSize = False
        Caption = 'V'#186'B'#186' del Rep. de la Entidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 16404
        mmTop = 254001
        mmWidth = 61119
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 253471
        mmWidth = 61119
        BandType = 0
      end
      object ppLabel367: TppLabel
        UserName = 'Label367'
        AutoSize = False
        Caption = 'V'#186'B'#186' del Administrador de la IGED'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 105834
        mmTop = 254001
        mmWidth = 61119
        BandType = 0
      end
      object ppMemo22: TppMemo
        UserName = 'Memo22'
        Caption = 
          'Autorizo de manera expresa para que a trav'#233's de la planilla '#250'nic' +
          'a de pago (Sistema '#218'nico de Planillas - SUP) se descuente de mis' +
          ' remuneraciones y/o pensiones mensuales, el compromiso adquirido' +
          '  con la entidad regulada por el D.S. N'#186' 010-2014-EF y Oficio M'#250 +
          'ltiple N'#186' 061-2016-MINEDU / VMGP-DIGEDD-DITEM, seg'#250'n el siguient' +
          'e detalle:'#13#10
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Lines.Strings = (
          
            'Para contar con el V'#186'B'#186' del Administrador de la IGED, el formato' +
            ' debe estar debidamente llenado y con la firma del servidor que ' +
            'autoriza  y la entidad con quien asume el compromiso.')
        Transparent = True
        mmHeight = 10848
        mmLeft = 11377
        mmTop = 266965
        mmWidth = 180446
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object pplasoapenomdni: TppLabel
        UserName = 'lasoapenomdni'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 18256
        mmTop = 27252
        mmWidth = 152665
        BandType = 0
      end
      object pplasodni: TppLabel
        UserName = 'lasodni'
        AutoSize = False
        Caption = '88888888'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 52388
        mmTop = 32544
        mmWidth = 17727
        BandType = 0
      end
      object pplMesCAPADS: TppLabel
        UserName = 'lMesCAPADS'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 43392
        mmTop = 156634
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoCADAPS: TppLabel
        UserName = 'lMesCAPADS1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 156634
        mmWidth = 12965
        BandType = 0
      end
      object pplconlabnom: TppLabel
        UserName = 'lconlabnom1'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56886
        mmTop = 66675
        mmWidth = 7451
        BandType = 0
      end
      object pplconlabcon: TppLabel
        UserName = 'lconlabcon1'
        Caption = '(   )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56886
        mmTop = 71702
        mmWidth = 5927
        BandType = 0
      end
      object pplconlabpen: TppLabel
        UserName = 'lconlabpen2'
        Caption = '(   )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 56886
        mmTop = 76729
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label353'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 34396
        mmTop = 169334
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel354: TppLabel
        UserName = 'Label354'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 72496
        mmTop = 169334
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel356: TppLabel
        UserName = 'Label356'
        Caption = 'Mes _____________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 111919
        mmTop = 169334
        mmWidth = 36513
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label357'
        Caption = 'A'#241'o ______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 150019
        mmTop = 169334
        mmWidth = 20902
        BandType = 0
      end
      object pplMesIniCrono: TppLabel
        UserName = 'lMesCAPADS2'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 43392
        mmTop = 168805
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoIniCrono: TppLabel
        UserName = 'lAnoIniCrono'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 168805
        mmWidth = 12964
        BandType = 0
      end
      object pplMesFinCrono: TppLabel
        UserName = 'lMesFinCrono'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 121179
        mmTop = 168805
        mmWidth = 24077
        BandType = 0
      end
      object pplAnoFinCrono: TppLabel
        UserName = 'Label3701'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 159544
        mmTop = 168805
        mmWidth = 12964
        BandType = 0
      end
      object pplDesMen: TppLabel
        UserName = 'lDesMen'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 55563
        mmTop = 175948
        mmWidth = 15346
        BandType = 0
      end
      object pplTotDes: TppLabel
        UserName = 'lTotDes'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 175948
        mmWidth = 19315
        BandType = 0
      end
      object pplNumcuo: TppLabel
        UserName = 'Label3702'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 94986
        mmTop = 175419
        mmWidth = 6879
        BandType = 0
      end
      object pplApoObli: TppLabel
        UserName = 'lTituloApoObli1'
        Caption = '( X )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 151607
        mmWidth = 7451
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label350'
        Caption = ' Compromiso por cr'#233'ditos, alimentos, servicios y otros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 25665
        mmTop = 163777
        mmWidth = 93398
        BandType = 0
      end
      object ppllugarfecha: TppLabel
        UserName = 'lTotDes1'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 66940
        mmTop = 200819
        mmWidth = 95779
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = ' identificado con DNI N'#186'  ________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 10583
        mmTop = 33073
        mmWidth = 60748
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList7: TppParameterList
    end
  end
  object pprDecAso: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 456
    Top = 504
    Version = '7.02'
    mmColumnWidth = 0
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpHorizontal
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'hp LaserJet 1320 PCL 6'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 246592
            mmPrintPosition = 0
            object ppRichText2: TppRichText
              UserName = 'RichText2'
              Caption = 'RichText2'
              RichText = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang10250{\fonttbl{\f0\fnil\fch' +
                'arset0 Arial Narrow;}{\f1\fnil MS Sans Serif;}}'#13#10'{\colortbl ;\re' +
                'd0\green0\blue0;}'#13#10'\viewkind4\uc1\pard\cf1\b\f0\fs20 (Todos los ' +
                'datos deben ser llenados de manera OBLIGATORIA)\par'#13#10'\b0\par'#13#10'Di' +
                'recci\'#39'f3n domiciliaria: \par'#13#10'Dpto./Prov./Dist.:               ' +
                '                                   \par'#13#10'Referencia: \par'#13#10'Tel\'#39 +
                'e9fono Fijo:                                                    ' +
                '          Celular:                                   \par'#13#10'Email' +
                ': \par'#13#10'Centro Educativo: \par'#13#10'Fecha de Nombramiento:          ' +
                '                          N\'#39'b0: \par'#13#10'\par'#13#10'\b\fs16 1. Benefici' +
                'o por Retiro.\b0  Compuesto por los aportes voluntarios realizad' +
                'os durante los a\'#39'f1os de servicio, acumulados en la Cuenta Indi' +
                'vidual, as\'#39'ed\par'#13#10'    como los intereses mensuales y los bonus' +
                ' trimestrales otorgados por la Derrama Magisterial a modo de rep' +
                'arto de utilidades.\par'#13#10'\b 2. Beneficios por Invalidez o Fallec' +
                'imiento.\b0  Compuesto por los aportes voluntarios acumulados en' +
                ' la Cuenta Individual, m\'#39'e1s un monto adicional\par'#13#10'    asigna' +
                'do por la Derrama Magisterial, el cual es calculado con el valor' +
                ' de la UIT (Unidad Impositiva Tributaria) vigente a la fecha del' +
                ' cese.\cf0\f1\par'#13#10'}'#13#10
              mmHeight = 57944
              mmLeft = 15346
              mmTop = 188648
              mmWidth = 165365
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              Caption = 'DECLARACI'#211'N DE ASOCIADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 41540
              mmTop = 9790
              mmWidth = 65088
              BandType = 4
            end
            object ppShape1: TppShape
              UserName = 'Shape1'
              Shape = stRoundRect
              mmHeight = 8731
              mmLeft = 107950
              mmTop = 7938
              mmWidth = 39158
              BandType = 4
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              Caption = 'N'#186
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 109802
              mmTop = 9790
              mmWidth = 5292
              BandType = 4
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Caption = 
                'Fecha: ......... de ............................. del ..........' +
                '..'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 84931
              mmTop = 27781
              mmWidth = 72856
              BandType = 4
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'A quien corresponda:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 15346
              mmTop = 39423
              mmWidth = 33147
              BandType = 4
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 
                'Mediante la presente, yo  ......................................' +
                '................................................................' +
                '.................'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 15346
              mmTop = 47096
              mmWidth = 156083
              BandType = 4
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 
                'identificado(a) con DNI .............................., siendo p' +
                'rofesor(a) nombrado(a) a partir del a'#241'o ..............'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 15346
              mmTop = 51329
              mmWidth = 156549
              BandType = 4
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Caption = 
                'perteneciente a la Direcci'#243'n Regional de .......................' +
                '................................................................' +
                '..........'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 15346
              mmTop = 55563
              mmWidth = 158539
              BandType = 4
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Caption = 
                'y de la UGEL ...................................................' +
                '............................................................., a' +
                'l amparo  de '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 15346
              mmTop = 59796
              mmWidth = 165365
              BandType = 4
            end
            object ppRichText1: TppRichText
              UserName = 'RichText1'
              Caption = 'RichText1'
              RichText = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang10250{\fonttbl{\f0\fnil\fch' +
                'arset0 Arial;}{\f1\fnil MS Sans Serif;}}'#13#10'{\colortbl ;\red0\gree' +
                'n0\blue0;}'#13#10'\viewkind4\uc1\pard\cf1\fs20 lo dispuesto por el art' +
                '\'#39'edculo 2\'#39'b0 incisos 13, 14, 15 y 24 literal a), el art\'#39'edcul' +
                'o 23\'#39'b0, 24\'#39'b0 y dem\'#39'e1s pertinentes  de\par'#13#10'la  Constituci\' +
                #39'f3n  Pol\'#39'edtica  del  Per\'#39'fa,  y  del  DS  N\'#39'b0 078-65-ED,  ' +
                'DS N\'#39'b0 021-88-ED  y  el\par'#13#10'DS N\'#39'b0 004-2007-ED, declaro mi ' +
                'condici\'#39'f3n de  asociado de  la Derrama Magisterial.  Tambi\'#39'e9' +
                'n mi  voluntad\par'#13#10'de suscribir los documentos o  autorizacione' +
                's   necesarios  a  fin  de  que  Derrama  Magisterial,   por   s' +
                '\'#39'ed\par'#13#10'mismo o a  trav\'#39'e9s  de terceros.  efect\'#39'fae  o  ges' +
                'tione  el  descuento mensual  de   mis  aportes a partir  de\par' +
                #13#10'la fecha de mi afiliaci\'#39'f3n  hasta  la  fecha  de  mi  cese  ' +
                'definitivo  del   magisterio  nacional.  Dicho  aporte\par'#13#10'ser\' +
                #39'e1  deducido  de  mi  Planilla  \'#39'danica  de  Pagos y entregado' +
                ' a  Derrama Magisterial  con la  finalidad de\par'#13#10'generar o inc' +
                'rementar  mi   Fondo  de  Retiro  Previsional\fs12 (1)\fs20 ,  a' +
                's\'#39'ed   como  tener   derecho  a  los beneficios\par'#13#10'solidarios' +
                '  (\b Invalidez y Fallecimiento\b0 )\fs12 (2)\fs20 ,  adem\'#39'e1s ' +
                'de permitirme el acceso  a los servicios que Derrama\par'#13#10'Magist' +
                'erial  brinda a todos sus asociados.\par'#13#10'\par'#13#10'En  caso  de  qu' +
                'e  mis  aportes no puedan ser descontados  de  la Planilla \'#39'dan' +
                'ica de Pagos por el \'#39'd3rgano\par'#13#10'Intermedio  del  Ministerio d' +
                'e  Educaci\'#39'f3n correspondiente,  \b AUTORIZO\b0   a   Derrama M' +
                'agisterial a realizar\par'#13#10'dicho descuento a trav\'#39'e9s de  la Cu' +
                'enta de Ahorros o de Haberes que mantenga en la instituci\'#39'f3n f' +
                'inanciera\par'#13#10'o bancaria donde se deposite mi remuneraci\'#39'f3n c' +
                'omo \b profesor(a) nombrado(a)\b0   del magisterio nacional.\par' +
                #13#10'La  presente  declaraci\'#39'f3n se realiza en virtud  a lo establ' +
                'ecido en  el  Art\'#39'edculo 34\'#39'b0 del Estatuto de Derrama\par'#13#10'Ma' +
                'gisterial, modificado por Resoluci\'#39'f3n Ministerial N\'#39'b0 561-93' +
                '-ED o por la norma que lo sustituya.\par'#13#10'\par'#13#10'Atentamente;\cf0' +
                '\f1\fs16\par'#13#10'}'#13#10
              mmHeight = 80433
              mmLeft = 14817
              mmTop = 64558
              mmWidth = 166688
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
            object ppShape2: TppShape
              UserName = 'Shape2'
              Shape = stRoundRect
              mmHeight = 33602
              mmLeft = 155046
              mmTop = 147373
              mmWidth = 25929
              BandType = 4
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Huella digital'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 157692
              mmTop = 175948
              mmWidth = 20108
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 33338
              mmTop = 181505
              mmWidth = 64558
              BandType = 4
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Firma del docente id'#233'ntica a la del DNI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4022
              mmLeft = 34660
              mmTop = 182298
              mmWidth = 60452
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 1323
              mmLeft = 15346
              mmTop = 188119
              mmWidth = 165364
              BandType = 4
            end
            object ppldia_dec: TppLabel
              UserName = 'ldia_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 4996
              mmLeft = 97631
              mmTop = 26723
              mmWidth = 7324
              BandType = 4
            end
            object pplmes_dec: TppLabel
              UserName = 'ldia1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 113506
              mmTop = 26723
              mmWidth = 29633
              BandType = 4
            end
            object pplano_dec: TppLabel
              UserName = 'lano_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 5027
              mmLeft = 149225
              mmTop = 26723
              mmWidth = 8467
              BandType = 4
            end
            object pplasoapenom_dec: TppLabel
              UserName = 'ldia2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3979
              mmLeft = 55563
              mmTop = 46567
              mmWidth = 122767
              BandType = 4
            end
            object pplasodni_dec: TppLabel
              UserName = 'lasodni_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3979
              mmLeft = 52917
              mmTop = 50800
              mmWidth = 28321
              BandType = 4
            end
            object pplanonom_dec: TppLabel
              UserName = 'lanonom_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3979
              mmLeft = 157957
              mmTop = 50800
              mmWidth = 12954
              BandType = 4
            end
            object pplupronom_dec: TppLabel
              UserName = 'lasodni_dec1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 79111
              mmTop = 55033
              mmWidth = 100013
              BandType = 4
            end
            object pplusenom_dec: TppLabel
              UserName = 'lusenom_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 38629
              mmTop = 59267
              mmWidth = 116946
              BandType = 4
            end
            object pplnumdec: TppLabel
              UserName = 'lnumdec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5038
              mmLeft = 116946
              mmTop = 9790
              mmWidth = 27771
              BandType = 4
            end
            object ppldirdom_dec: TppLabel
              UserName = 'ldirdom_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 196850
              mmWidth = 127529
              BandType = 4
            end
            object pplubigeodom_dec: TppLabel
              UserName = 'ldirdom_dec1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 200819
              mmWidth = 127529
              BandType = 4
            end
            object ppldesrefdom_dec: TppLabel
              UserName = 'ldesrefdom_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 204788
              mmWidth = 127529
              BandType = 4
            end
            object pplasotelf1_dec: TppLabel
              UserName = 'lasotelf1_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 208757
              mmWidth = 32015
              BandType = 4
            end
            object pplasotelf2_dec: TppLabel
              UserName = 'lasotelf2_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 95515
              mmTop = 208757
              mmWidth = 32015
              BandType = 4
            end
            object pplasoemail_dec: TppLabel
              UserName = 'lasoemail_dec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 212725
              mmWidth = 76729
              BandType = 4
            end
            object pplasocenedu_dec: TppLabel
              UserName = 'lasotelf1_dec1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 50800
              mmTop = 216694
              mmWidth = 127529
              BandType = 4
            end
            object pplasofresnom_dec: TppLabel
              UserName = 'lasotelf1_dec3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3703
              mmLeft = 50800
              mmTop = 220663
              mmWidth = 19579
              BandType = 4
            end
            object pplasoresnum_dec: TppLabel
              UserName = 'lasotelf1_dec5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 88371
              mmTop = 220663
              mmWidth = 22754
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 155046
              mmTop = 174890
              mmWidth = 25665
              BandType = 4
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 4763
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpHorizontal
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'hp LaserJet 1320 PCL 6'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 275432
            mmPrintPosition = 0
            object ppRichText3: TppRichText
              UserName = 'RichText3'
              Caption = 'RichText3'
              RichText = 
                '{\rtf1\ansi\ansicpg1252\deff0\deflang10250{\fonttbl{\f0\fnil\fch' +
                'arset0 Arial;}{\f1\fnil Arial;}}'#13#10'{\colortbl ;\red0\green0\blue0' +
                ';}'#13#10'\viewkind4\uc1\pard\cf1\b\fs20           \fs18   INFORMACI\'#39 +
                'd3N SOBRE EL MARCO LEGAL DEL FONDO DE DERRAMA MAGISTERIAL\b0\f1\' +
                'par'#13#10'\par'#13#10'\b\f0 1.- Constituci\'#39'f3n Pol\'#39'edtica del Per\'#39'fa / C' +
                'ap\'#39'edtulo I, Derechos Fundamentales de la Persona:\b0\f1\par'#13#10'\' +
                'b\f0 Art\'#39'edculo 2\'#39'b0.\b0\f1  Toda persona tiene derecho:\par'#13#10 +
                '\f0    \b\f1 13.\b0\f0  A asociarse y a constituir fundaciones y' +
                ' diversas formas de organizaci\'#39'f3n jur\'#39'eddica sin fines de luc' +
                'ro, sin\f1\par'#13#10'\f0    autorizaci\'#39'f3n previa y con arreglo a le' +
                'y. No pueden ser disueltas por resoluci\'#39'f3n administrativa.\f1\' +
                'par'#13#10'\f0    \b\f1 14.\b0  A contratar con \f0 fines l\'#39'edcitos, ' +
                'siempre que no se contravengan leyes de orden p\'#39'fablico.\f1\par' +
                #13#10'\f0    \b\f1 15.\b0\f0  A trabajar libremente, con sujeci\'#39'f3n' +
                ' a ley.\f1\par'#13#10'\f0    \b\f1 24.\b0\f0  A la libertad y a la seg' +
                'uridad personal. En consecuencia: a) Nadie est\'#39'e1 obligado a ha' +
                'cer lo que la ley no\f1\par'#13#10'\f0    manda, ni impedido de hacer ' +
                'lo que ella no proh\'#39'edbe.\f1\par'#13#10'\b\f0 Art\'#39'edculo 23\'#39'b0.\b0 ' +
                ' Referido a la funci\'#39'f3n del Estado de atender prioritariamente' +
                ' el trabajo y promover las condiciones\f1\par'#13#10'\f0 para el progr' +
                'eso social y econ\'#39'f3mico, pol\'#39'edticas de fomento del empleo pr' +
                'oductivo y de educaci\'#39'f3n para el trabajo.\f1\par'#13#10'\f0 "Ninguna' +
                ' relaci\'#39'f3n laboral puede limitar el ejercicio de los derechos ' +
                'constitucionales, ni desconocer o rebajar\f1\par'#13#10'la dignidad de' +
                'l trabajador...".\par'#13#10'\b\f0 Art\'#39'edculo 24\'#39'b0.\b0  Referido al' +
                ' derecho del trabajador a una remuneraci\'#39'f3n equitativa y sufic' +
                'iente, que procure, para \'#39'e9l\f1\par'#13#10'\f0 y su familia, el bien' +
                'estar material y espiritual. "El pago de la remuneraci\'#39'f3n y de' +
                ' los benefi\f1 cios sociales del\par'#13#10'\f0 trabajador tiene prior' +
                'idad sobre cualquiera otra obligaci\'#39'f3n del empleador\'#39'85"\f1\p' +
                'ar'#13#10'\b\par'#13#10'\f0 2.- Decreto Supremo N\'#39'b0 78-65 / Norma que crea' +
                ' Derrama Magisterial:\f1\par'#13#10'\f0 Art\'#39'edculo 1\'#39'b0.\b0  Establ\' +
                #39'e9zcase la Derrama Magisterial a partir del primero de enero de' +
                ' 1965.\f1\par'#13#10'\b\f0 Art\'#39'edculo 2\'#39'b0.\b0  La Derrama Magisteri' +
                'al comprender\'#39'e1 a todos los docentes peruanos del Servicio Ofi' +
                'cial, sin distinci\'#39'f3n\f1\par'#13#10'\f0 de niveles, clases o categor' +
                '\'#39'edas.\f1\par'#13#10'\b\f0 Art\'#39'edculo 3\'#39'b0.\b0  Des\'#39'edgnese una Co' +
                'misi\'#39'f3n integrada en la siguiente forma: Un delegado de la FEN' +
                'EP, dos delegados\f1\par'#13#10'de cada uno de los Gremios Magisterial' +
                'es de nivel nacional, un delegado de los docentes cesantes y jub' +
                'ilados,\par'#13#10'\f0 un delegado de los empleados administrativos de' +
                'l Ministerio de Educaci\'#39'f3n P\'#39'fablica y un delegado del Minist' +
                'erio\f1\par'#13#10'\f0 de Educaci\'#39'f3n P\'#39'fablica.\f1\par'#13#10'\par'#13#10'\b 3.' +
                '- Decreto Supremo 021-88-ED / Estatuto de Derrama Magisterial:\b' +
                '0\par'#13#10'\b\f0 Cap\'#39'edtulo I.\b0  De su finalidad, objetivos y dur' +
                'aci\'#39'f3n\f1\par'#13#10'\f0    \b Art\'#39'edculo 3\'#39'b0.\b0\f1  Son objetiv' +
                'os de Derrama Magisterial: a) Atender la Seguridad y Bienestar S' +
                'ocial de sus asociados\par'#13#10'\f0    elevando la calidad de vida d' +
                'el Maestro. b) Otorgar servicios de Previsi\'#39'f3n Social, Cr\'#39'e9d' +
                'ito Social, Cultura Social,\f1\par'#13#10'\f0    Inversi\'#39'f3n Social y' +
                ' Vivienda.\f1\par'#13#10'\b\f0 Cap\'#39'edtulo III.\b0  Del \'#39'd3rgano de G' +
                'obierno\f1\par'#13#10'\f0    \b Art\'#39'edculo 11\'#39'b0.\b0  El Directorio ' +
                'de Derrama Magisterial est\'#39'e1 constituido por seis miembros: cu' +
                'atro (04) representantes\f1\par'#13#10'\f0    del Sindicato Unitario d' +
                'e los Trabajadores en la Educaci\'#39'f3n del Per\'#39'fa (SUTEP), uno (' +
                '01) del Sindicato de Docentes\f1\par'#13#10'\f0    de Educaci\'#39'f3n Sup' +
                'erior del Per\'#39'fa (SIDESP) y un (01) representante del Ministeri' +
                'o de Educaci\'#39'f3n.\f1\par'#13#10'\b\f0 Cap\'#39'edtulo VI.\b0  Del R\'#39'e9gi' +
                'men Econ\'#39'f3mico: Patrimonio\f1\par'#13#10'\f0    \b Art\'#39'edculo 32\'#39'b' +
                '0.\b0  Los fondos de Derrama Magisterial se aplicar\'#39'e1n en los ' +
                'siguientes conceptos: a) De atenci\'#39'f3n a\f1\par'#13#10'\f0    \f1 ben' +
                'e\f0 ficiarios. b) De administraci\'#39'f3n. c) De inversi\'#39'f3n y se' +
                'rvicios.\f1\par'#13#10'\b\f0 Cap\'#39'edtulo VII.\b0\f1  De las Aportacion' +
                'es\par'#13#10'\f0    \b Art\'#39'edculo 34\'#39'b0.\b0  El aporte unitario men' +
                'sual de cada docente ser\'#39'e1 correspondiente al 3% del Ingreso M' +
                '\'#39'ednimo Legal (IML).\f1\par'#13#10'\f0    \b Art\'#39'edculo 35\'#39'b0.\b0  ' +
                'Los aportes se descontar\'#39'e1n mensualmente mediante la Planilla ' +
                '\'#39'danica de Pagos del Ministerio\f1\par'#13#10'\f0    de Educaci\'#39'f3n ' +
                'y por cuotas completas en todos los casos y mientras el docente ' +
                'permanezca en el servicio activo.\f1\par'#13#10'\b\f0 Cap\'#39'edtulo VIII' +
                '.\b0\f1  De los Servicios\par'#13#10'\f0    \b Art\'#39'edculo 37\'#39'b0.\b0 ' +
                ' El Programa de Previsi\'#39'f3n Social cubre los siguientes riesgos' +
                ': 1. Fallecimiento. 2. Invalidez.\f1\par'#13#10'\f0    \f1 3. Retiro.\' +
                'par'#13#10'\par'#13#10'\b\f0 4.- Resoluci\'#39'f3n Ministerial N\'#39'b0 561-93-ED /' +
                ' Establece aporte unitario mensual en 0.5% de la UIT:\b0\f1\par'#13 +
                #10'\b\f0 Art\'#39'edculo 1\'#39'b0.\b0  El aporte unitario mensual de cada' +
                ' docente ser\'#39'e1 el correspondiente al 0.5% de la Unidad Imposit' +
                'iva\f1\par'#13#10'Tributaria (UIT).\par'#13#10'\b\f0 Art\'#39'edculo 2\'#39'b0.\b0  ' +
                'El aporte se\'#39'f1alado en el art\'#39'edculo 34\'#39'b0 del Estatuto de D' +
                'errama Magisterial, modificado por el art\'#39'edculo 1\'#39'b0\f1\par'#13#10 +
                '\f0 de la presente Resoluci\'#39'f3n Ministerial, tendr\'#39'e1 vigencia' +
                ' a partir del 1\'#39'b0 de agosto de 1993.\f1\par'#13#10'\par'#13#10'\b\f0 5.- D' +
                'ecreto Supremo N\'#39'b0 004-2007-ED / Establece disposiciones para ' +
                'simplificar el desarrollo de planillas\f1\par'#13#10'\f0 de remuneraci' +
                'ones del personal docente del Sector Educaci\'#39'f3n.\f1\par'#13#10'\b0\p' +
                'ar'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\f0           ----' +
                '-----------------------------                 ------------------' +
                '-----------------                           --------------------' +
                '--------------------\f1\par'#13#10'\f0                 \f1 Nombre y ap' +
                'ellido\f0                                   \f1 Sello y firma\f0' +
                '                                                          \f1 Se' +
                'llo y firma\par'#13#10'\f0                 \f1 Promotor/Asesor\f0     ' +
                '                                \f1 Registrador\f0              ' +
                '                               \f1 Supervisor o responsable\par'#13 +
                #10'\f0    \f1\par'#13#10'\par'#13#10'\fs16 (El sello y \f0 firma del superviso' +
                'r validar\'#39'e1 el correcto llenado de la Carta de Afiliaci\'#39'f3n) ' +
                '                                               \f1 DM-UPS-06-201' +
                '7\fs18\par'#13#10'}'#13#10
              mmHeight = 271463
              mmLeft = 10848
              mmTop = 3969
              mmWidth = 169863
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
            end
          end
        end
      end
    end
  end
end
