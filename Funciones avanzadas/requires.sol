pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract Require{

    //Función que verifique la contraseña. => pure(Especifica que no se va a acceder a ningún tipo de dato.. tampoco leer => view)
    function password(string memory _pass)public pure returns(string memory){
        require(keccak256(abi.encodePacked(_pass)) == keccak256(abi.encodePacked("Password")), "The password is not the same as the one entered");
        return "Correct password";
    }

    uint time = 0;
    uint public wallet = 0; //Con el public, se crea un getter y se puede consultar el valor en este caso
    //Funcion para pagar
    function pay(uint _amount) public returns(uint){
        require(now > time + 5 seconds, "You still can't pay!"); //Nos permite llamar una función cada X tiempo.
        time = now;
        wallet = wallet + _amount;
        return wallet;
    }

    //Función con una lista de estudiantes

    string [] studentNames;

    function newName(string memory _name) public {
        for(uint x=0; x<studentNames.length; x++){
            require(keccak256(abi.encodePacked(_name)) != keccak256(abi.encodePacked(studentNames[x])), "The student does appear in the list!");
        }

        //Se añade a la lista
        studentNames.push(_name);
    }
}