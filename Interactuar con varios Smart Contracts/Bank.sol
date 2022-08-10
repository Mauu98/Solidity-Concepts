pragma solidity >=0.4.4 <0.7.0;

contract Bank{

    //Defino un tipo de dato complejo
    struct customer{
        string _name;
        address _address;
        uint _money;
    }

    //mapping que nos relaciona el nombre del cliente con el tipo de dato complejo => cliente
    mapping (string => customer) customers;

    //Función que nos permite dar de alta un nuevo cliente
    function newCustomer(string memory _name) public {
        customers[_name] = customer(_name, msg.sender , 0);
    }
}

contract Bank2{

}

contract Bank3{
    
}
