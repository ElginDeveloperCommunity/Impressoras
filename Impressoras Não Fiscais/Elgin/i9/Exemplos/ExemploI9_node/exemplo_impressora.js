// $ npm install ffi-napi
import ffi from 'ffi-napi'

const lib = new ffi.Library('./E1_Impressora01', {
    'AbreConexaoImpressora': [
        'int32', ['int32', 'string', 'string', 'int32']
    ],
    'FechaConexaoImpressora': [
        'int32', []
    ],
    'CorteTotal': [
        'int32', ['int32']
    ],
    'ImpressaoTexto': [
        'int32', [ 'string', 'int32', 'int32', 'int32' ]
    ]
})

const retAbre = lib.AbreConexaoImpressora(1, 'i9', 'USB', 0)
console.log('AbreConexaoImpressora: ', retAbre)

const retImp = lib.ImpressaoTexto('mensagem teste a ser impressa', 0, 0, 0)
console.log(retImp)

const retCorte = lib.CorteTotal(10)
console.log(retCorte)

const retFecha = lib.FechaConexaoImpressora()
console.log('FechaConexaoImpressora: ', retFecha)
