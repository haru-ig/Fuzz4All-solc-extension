pragma solidity ^0.8.0;
contract ExampleStruct8 {
    uint96 value;
    constructor(uint96 _value) {
        value = _value;
    }
    function increaseBy(uint _delta) public {
        value += _delta;
    }
    function getCurrent() public view returns (uint96) {
        return value;
    }
}
