pragma solidity ^0.8.0;
contract MutatedArray {
    address[] private array;
    constructor (uint _value) {
        require(array.length < 5, "Array too long");
        array.push(_value);
    }


    function append(uint _value) override {
        require(array.length < 5, "Array too long");
        array.push(_value);
    }

    function get(uint index) override public view returns(uint){
        require(index < array.length, "Array index out of bounds");
        uint out = 0;
        for(uint i=0; i<index; i++){
            out ^= array[i];
        }
        return out;
    }
}
