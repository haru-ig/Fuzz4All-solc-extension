pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;

    constructor(uint _value) public {
        a = _value;
    }
    function set(uint _to, uint _value) public {
        a = _to;
    }
    function change() public {
        a = 64;
    }
    }

pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;
    uint constant b = 42;

    constructor(uint _value) public {
        a = _value;
    }
    function set(uint _to, uint _value, uint _anotherValue) public {
        a = _to;
    }
    function change() public {
        a = b + 1;
    }
}
