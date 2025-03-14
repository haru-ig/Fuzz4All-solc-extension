pragma solidity ^0.8.0;
contract m201 {
    uint public j;
    function f(uint i) public { j = i; }
    function f2() public { j += 2; }
}

pragma solidity ^0.8.0;
contract b201 {
    address public a;
    constructor() public {
        a = msg.sender;
    }
}
pragma solidity ^0.8.0;
contract b208 {
    address public a;
    constructor() public {
        a = msg.sender;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
    }
}
pragma solidity ^0.8.0;
contract b204 {
    uint256 public _gasleft;
    function f() public pure {
        a;
    }
}

pragma solidity >=0.6.0 <0.8.0;
contract b20 {
    struct MyStruct {
        uint x;
    }
    address public a;
    constructor() public {
        a = msg.sender;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
        a = a;
    }
}
pragma solidity >=0.6.0 <0.8.0;
contract n201 {
    uint public i;
    uint public j;
    constructor() public {
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
        i = i;
    }
}
pragma solidity >=0.6.0 <0.8.0;
contract a202 {
    uint public j;
    uint public k;
    uint public l;
    uint public m;
    uint public n;
    uint public o;
    uint public p;
    uint public q;
    uint public r;
    uint public s;
    uint public t;
    uint public u;
    uint public v;
    uint public w;
    uint public x;
    uint public y;
