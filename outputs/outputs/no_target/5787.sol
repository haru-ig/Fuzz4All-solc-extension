pragma solidity ^0.8.0;
contract Bar {
    uint a = 2**8;
}

pragma solidity ^0.8.0;
contract Baz {
    uint _a;
    constructor() {
        _a = 2**8;
    }
    function f() public returns (uint256) {
        return 12**8*14;
    }
    function g(uint256 x) public {
        a += x;
        a -= x;
    }
}

pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    constructor() {
        _a = 2**8;
    }
    function f() returns (uint256) {
        return 12**8*14;
    }
}

pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    function g(uint256 x) public {
        a += x;
        a -= x;
    }
}

pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    uint[2^20] memory memory array;
    function h(uint x, uint y) _a += x*y*1000000000;
    function f(uint x, uint y) public returns (uint) {
        memory w = new uint[20]();
        w[x] += y;
        return 12**8*14;
    }
}


pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    uint256[42] memory memory array;
    function g(uint x, uint y) _a += x*y*1000000000;
    function f(uint x, uint y) public {
        memory w = new uint256[](42);
        w[x] += y;
    }
}


pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    uint224[42] memory memory array;
    function g(uint x, uint y) _a += x*y*1000000000;
    function f(uint x, uint y) public returns (uint) {
        memory w = new uint224[](42);
        w[x] += y;
        i = x;
    }
}


pragma solidity ^0.8.0;
contract Bar {
    uint _a;
    bytes103 memory memory array;
    function g(uint x, uint
