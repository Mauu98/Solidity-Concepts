pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract hash{

    //Cómputo del Hash de un String --> Calculandolo..
    function CalcularHash(string memory cadena) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(cadena));
    }

    function CalcularHash2(string memory cadena, uint entero, address direccion) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(cadena, entero, direccion));
    }

    function CalcularHash3(string memory cadena, uint entero, address direccion) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(cadena, entero, direccion, "Buenas", uint(5)));
    }

}

