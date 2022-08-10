//Indicando la versión
pragma solidity >=0.4.4 <0.7.0;

contract Bank{

    //Defino un tipo de dato complejo
    struct customer{
        string _name;
        string _address;
        uint _money;
    }

    //mapping que nos relaciona el nombre del cliente con el tipo de dato complejo => cliente
    mapping (string => customer) customers;

    //Función que nos permite dar de alta un nuevo cliente
    function newCustomer(string memory _name) public {
        customers[_name] = customer(_name, msg.sender, 0);
    }
}

//Herencia
contract Customer is Bank{

    function registerCustomer(string memory _name) public {
        newCustomer(_name);
    }

    function depositMoney(string memory _name, uint _amount) public {
        customers[_name]._money = customers[_name]._money + _amount;
    }

    function withdrawMoney(string memory _name, uint _amount) public returns(bool){
        bool flag = true;
        
        if(customers[_name]._money >= _amount){
            customers[_name]._money = customers[_name]._money - _amount;
        }else{
            flag = false;
        }

        return flag;
    }

    //El modificador "view", especifica que solo vamos a leer los datos, no vamos a modificarlos.
    function consultMoney(string memory _name) public view returns(uint){
        return clientes[_nombre]._money;
    }
}