pragma solidity >=0.4.0 <0.7.0;

contract funciones_globales{

    //Funciones msg.sender -> Nos devuelve la info. del remitente actual.
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    //Now -> Nos devuelve el timestamp del bloque actual
    function Now() public view returns(uint){
        return now;
    }

    //function block.coinbase -> Devuelve la dirección del minero que está procesando el bloque.
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    //Dificulty -> Devuelve la dificultad de procesar tal bloque
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    //BlockNumber -> Nos devuelve un entero con el número del bloque actual
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    //Msg.sig -> Nos devuelve bytes del identificador de la función
    function MsgSig() public view returns(bytes4){
        return msg.sig;
    } 

    //TXGasPrice -> Nos devuelve el precio del gas de la transacción
    function GasPrice() public view returns(uint){
        return tx.gasprice;
    }


}