pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b, uint c);
    uint _x = 1;
    constructor () {}
    function next() internal view {
        _x = 10;
    }
    uint public value;
    function setValue(uint _value) public {
        value = _value;
    }
    function increment() public {
        next();
    }
}
