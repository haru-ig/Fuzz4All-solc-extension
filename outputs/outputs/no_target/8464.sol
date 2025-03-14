pragma solidity ^0.8.0;
contract Mutated13 {
    uint16 a;
    constructor (
        string memory _value,
        uint16 _value2
    ) public {
        a = 16;
    }
    function set (
        uint16 a
    ) public {a = a + 16 ;}
    }
contract Mutated15 {
    uint16 a;
    constructor (
        uint16 _value1,
        uint16 _value2
    ) public {
        a = 16;
    }
    function set (
        uint16 a
    ) public {a = a + 16 ;}
    }
contract Mutated16 {
    uint16 public a;

    constructor (
        uint16 _value1
    ) public {
         a = 16;
    }
    function set (
        uint16 a
    ) public {a = a + 16 ;}
    }
