pragma solidity >=0.4.0 <0.7.0;

contract Modifier{

    //Solo el propietario del contrato puede ejecutar la función
    address public owner; //Dirección de la persona que creo el contrato

    constructor() public{
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner, "You don't have permissions to run the app!");
        _;
    }

    function example1() public onlyOwner(){ //Llamo al modificador que declare para que únicamente pueda acceder el dueño del contrato.
        //Código a ejecutar..
    }

    //Modifier únicamente para clientes
    struct customer{
        address customerAddress;
        string customerName;
    }

    mapping(string => address) customers;

    function registerCustomer(string memory _name) public {
        customers[_name] = msg.sender; //Asignamos en el mapping las direcciones de los nuevos clientes.
    }

    modifier onlyCustomers(string memory _name){
        require(customers[_name] == msg.sender);
        _;
    }

    function example2(string memory _name) public onlyCustomers(_name) {
        //Código a ejecutar únicamente para clientes...
    }

    //Ejemplo de conducción
    modifier onlyAdult(uint _minAge, uint _userAge){
        require(_userAge >= _minAge, "You can't drive!");
        _;
    }

    function drive(uint _userAge) public onlyAdult(18, _userAge){
        //Código a ejecutar para las personas mayores a 18 años en este caso.
    }

}