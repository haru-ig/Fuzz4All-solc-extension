pragma solidity ^0.8.0;
contract D{
    bytes private storage;
    event Log(uint);
    uint public value;
    uint storage_value;
    function setValue(uint x) public {
        storage = "x";
        value++;
        if (x == 10) {
            storage_value = 10;
            value++;
        }
    }
    function getValue(uint name) public view returns (uint, uint, uint) {
        value = 5;
        names = 1;
        return (0, 1, 2);
    }
    function setValue_2(uint name) public {
        value = 77;
        names = 3;
        storage = "y";
        storage_value = 2;
    }
}
