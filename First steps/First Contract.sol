//Todo código en Solidity debe empezar especificando la version.
pragma solidity >=0.4.0 <0.7.0; //Versión Mayor a la 0.4 y menor a la 0.7
import "./ERC20.sol";

contract FirstContract{

    //Atributos
    address owner; //Propietario del contrato
    ERC20Basic token;//Se declara en caso de que se tenga que pagar con Tokens.

    //Constructor
    constructor() public{
        owner = msg.sender;
        token = new ERC20Basic(1000);
    }

}