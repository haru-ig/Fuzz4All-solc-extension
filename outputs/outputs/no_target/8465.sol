pragma solidity ^0.8.0;
contract Mutated18 {
    uint16 public a;
    constructor (
        uint16 _value1
    ) public {
         a = 16;
    }
    function set (
        uint16 _value2
    ) public {
        uint16 _value1= get(msg.sender);
        a = a + _value1;
    }
    function get (
        address _to
    ) public view returns (uint16) {
        return a;
    }
    }
