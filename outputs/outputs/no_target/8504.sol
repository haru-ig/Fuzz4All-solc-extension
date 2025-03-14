pragma solidity ^0.8.0;
function set(uint a, uint b, uint c) public {
    a = a + 16;
    c = c + 1;
    b = b;
    }

pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256[256] public b;
    uint public c;
    constructor(uint _value1, uint256[_] memory _value2, uint _value3) public {
        a = 128;
        b = _value2;
        c = _value3;
    }
    function set(uint256 a, uint256[_] memory b, uint _value4) public {
        a = a + 16;
        b = b;
        c = _value4;
    }
    }

    contract Mutated2 is Mutated {
    uint public e;
    function set(uint a, uint b, uint _value5) public {
        a = a + 16;
        b = b;
        c = _value5;
        e = _value5 * a;
    }
    }
