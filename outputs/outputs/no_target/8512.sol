pragma solidity ^0.8.0;
contract Equivalent {
    uint[16] public z2;
    uint public z1;
    constructor(uint _z1, uint[16] memory _z2) public {
        z1 = _z1 + 1;
        z2 = _z2;
    }
    function set(uint, uint a, uint c, uint d) public {
        a=a+a;
        a=a/a;
        a=a-a;
        a=a/a;
        a=a*a;
        a=a+a;
        a=a+a;
        a=a*a;
        a=a+a;
        a=a+a;
        a=a*a;
        a=a+a;
        a=a*a;
        a=a+a;
        a=a+a;
    }
    }
pragma solidity ^0.5.0;

comment
pragma solidity ^0.5.0;
contract Equivalent {
    uint public z;
    uint public z2;
    uint public z1;
    uint public z3;
    uint public z4;
    uint public z5;
    uint public z6;
    uint public z7;
    uint public z8;
    constructor(uint _z1, uint memory _z2, uint[16] memory _z3) public {
        z1 = _z1;
        z2 = _z2;
        z3 = _z3[0] + 1;
    }
    }

pragma solidity 0.8.0;
contract Equivalent {
    uint public z;
    uint public z2;
    uint public z1;
    uint public z3;
    uint public z4;
    uint public z5;
    uint public z6;
    uint public z7;
    uint public z8;
    constructor(uint _z1, uint memory _z2, uint[16] memory _z3) public {
        z1 = _z1;
        z2 = _z2;
        z3 = _z3[2];
        z4 = 0;
    }
    }
pragma solidity ^0.5.0;
contract Equivalent {
    uint public z;
    uint public z2;
    uint public z1;
    uint public z3;
    uint public z4;
    uint public z5;
    uint public z6;
    uint public z7;
    uint public z8;
    constructor(uint _z1,
