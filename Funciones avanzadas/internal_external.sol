pragma solidity >=0.4.0 <0.7.0;

contract Food{

    struct dish{
        string name;
        string ingredients;
        uint time;
    }

    dish [] dishes;
    mapping(string => string) ingredients; //Se identifica o se relaciona el nombre del plato, con sus ingredientes.

    //Functions => Internal => Solo se puede llamar desde el contrato, o contratos que deriven de el. Similar a 'private'. 
    function newDish(string memory _name, string memory _ingredients, uint _time) internal {
        dishes.push(dish(_name, _ingredients, _time));
        ingredients[_name] = _ingredients;
    }

    //Nos devuelve los ingredientes, relacionandolo por el name.
    function getIngredients(string memory _name) internal view returns (string memory){
        return ingredients[_name]; 
    }

}

contract Sandwich is Food{

    //external => no se puede llamar desde dentro del mismo contrato.
    function sandwich(string memory _ingredients, uint _time) external {
        newDish("Sandwitch", _ingredients, _time);
    }

    function viewIngredients() external view returns(string memory){
        return getIngredients("Sandwitch");
    }


}