pragma solidity ^0.8.0;
contract Equivalence {
    uint public a;
    uint[16] public b;
    uint public c;

    function() public {
        uint i;
        i = 128;
        uint64 j;
        j = 128;
        a = 1;
        (int8)b[16-1];
        i;
        i = 127;
        j;
        a;
        b[16-1];
    }
    function set(uint b, uint d, uint e, uint f) public {
        b = b + d;
        c = c + e;
        a = f;
    }
    };

pragma solidity ^0.8.0;
contract Differences {
    uint public a;
    uint[16] public b;
    uint public c;
    uint public d;
    bytes32 public e;

    constructor(uint _value1, uint[16] memory _value2, uint _value3, uint _value4, bytes32 _value5) public {
        a = 5;
        b = _value2;
        c = _value3;
        d = _value4;
        e = _value5;
    }
    function set(uint b, uint d, uint e, uint f) public {
        b = b + d;
        c = c + e;
        d = f;
    }
    };

pragma solidity ^0.8.0;
contract A {
    constructor(uint _value) public {
        a = 22;

        }
    function set(uint e) public {
        c = 23;
        d = e;
        }
    };

pragma solidity ^0.8.0;
contract B {
    uint public a;
    uint[16] public b;
    uint public c;
    uint public d;

    constructor(uint _value1, uint[16] memory _value2, uint _value3, uint _value4, uint _value5) public {
        a = 22;
        b = _value2;
        c = _value3;
        d = _value4;
    }
    function set(uint b, uint d, uint e, uint f) public {
        b = b + d;
        c = c + e;
        d = f;
    }
    };
pragma solidity ^0.8.0;
contract B2 {
    uint public a;
    uint[16] public b;
    uint
