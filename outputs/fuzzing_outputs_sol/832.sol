pragma solidity ^0.8.0;
contract Candy {
    struct Drink {
        uint cost;
    }
    mapping (uint => Drink) public drink;
    uint public lastId = 0;


    function addDrink(uint _cost) public returns (uint) {
        uint _id = lastId++;
        drink[_id] = Drink(amount);
        drink[_id].cost = _cost;
        return _id;
    }
    function takeDrink(uint _id) public payable returns (bool success) {
        if (msg.value == drink[_id].cost) {
            drink[_id].cost = 0;
            delete drink[_id];
            return true;
        } else {
            return false;
        }
    }
}
