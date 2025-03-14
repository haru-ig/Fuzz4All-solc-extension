pragma solidity ^0.8.0;
contract Mutated10{
    struct Equipment{
        uint price;
        uint[] size;
    }
    uint public id;
    Equipment memory[] public equips;
    function addEquipment(uint price, uint[] memory size) public{
        equips.push(Equipment({price: price, size: size}));
    }
}
