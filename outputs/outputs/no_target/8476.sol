pragma solidity ^0.8.0;
contract Mutated1 {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 32;
        b = _value2;
        c = _value3;
    }
    function set (
        uint64 a,
        uint64[memory] memory b,
        uint256 c
    ) public {
        a = a + 32;
        b = b;
        c = c + 32;
    }
    }

pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint256 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 1;
        b = _value2;
        c = _value3;
    }
    function set (
        uint256 a,
        uint64[memory] memory b,
        uint256 c
    ) public {
        a = a + 1;
        b = b;
        c = c + 1;
    }
    }


pragma solidity ^0.8.0;
contract Mutated3 {
    uint256 public a;
    uint64[17+1*4] public b;
    uint256 c;
    constructor (
        uint256 _value1,
        uint64[17+1*4] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 2;
        b = _value2;
        c = _value3;
    }
    function set(
        uint256 a,
        uint64[memory] memory b,
        uint256 c
    ) public {
        a = a + 2;
        b = b
