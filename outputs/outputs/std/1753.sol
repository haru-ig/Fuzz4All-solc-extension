pragma solidity ^0.8.0;
contract Mutated {
    constructor(uint _initialValue) {
        uint value = _initialValue * 3;
        mutateA(value);
        mutateB(value);
        returnC();
    }
    function mutateA(uint _value) public {
        uint value = _value * 2;
        emit Mutated(_value, _value * 2, block.timestamp, block.timestamp - 1000);
    }
    function mutateB(uint _value) public {
        uint value = _value * 3;
        emit Mutated(_value, _value * 3, block.timestamp, block.timestamp);
    }
    function returnC() public view returns(uint) {
        uint value = uint(block.timestamp);
        emit Mutated(value, value / 3, block.timestamp, block.timestamp + 1000);
        return value - 2;
    }
}
