pragma solidity >=0.4.4 <0.7.0;

//import "./Bank.sol";

import {Bank, Bank2, Bank3} from "./Bank.sol";

contract Customer is Bank{

    function registerCustomer(string memory _name) public {
        newCustomer(_name);
    }

    function depositMoney(string memory _name, uint _amount) public {
        customers[_name]._money = customers[_name]._money + _amount;
    }

    function withdrawMoney(string memory _name, uint _amount) public returns(bool){
        bool flag = true;
        
        if(int(customers[_name]._money) >= int(_amount)){
            customers[_name]._money = customers[_name]._money - _amount;
        }else{
            flag = false;
        }

        return flag;
    }

    //El modificador "view", especifica que solo vamos a leer los datos, no vamos a modificarlos.
    function consultMoney(string memory _name) public view returns(uint){
        return customers[_name]._money;
    }
}
