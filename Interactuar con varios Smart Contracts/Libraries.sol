pragma solidity >=0.4.4 <0.7.0;

//Sirve para organizar código y para no repetir funciones que se llaman seguido.
library Operations {

    function division(uint _x, uint _y) public pure returns(uint){
        require(_y > 0, "Se fuerza que la variable 'y' sea mayor a 0, si no lo es, se para la función.");
        return _x/_y;
    }

    function multiplication(uint _x, uint _y) public pure returns(uint){
        if((_x==0) || (_y == 0)){
            return 0;
        }else{
            return _x*_y;
        }
    }
}

contract calculus{

    //Se usa la librería 'Operations' para los tipos de datos enteros.
    using Operations for uint;

    function calculations(uint _a, uint _b) public pure returns (uint, uint){
        uint q = _a.division(_b); //Cociente entre A y B
        uint m = _a.multiplication(_b);

        return (q,m);
    }
}
