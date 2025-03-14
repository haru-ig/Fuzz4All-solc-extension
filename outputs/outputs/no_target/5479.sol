pragma solidity ^0.8.0;
enum E {A};
contract B {
    function bar() public pure returns (uint) {
       return E.A;
    }
}
contract C {
    uint x = 1337;
    uint y = 1108;
    function foo() public pure returns (uint) {
        if (x < y) {
            return x;
        } else {
            return y;
        }
    }
}
contract D {
    uint w = 11;
    uint x = 13;
    uint y = 12;

    function x2() public pure returns (uint) {
       if (x < y) {
            return x;
         }
        return w;
    }

    function y2() public pure returns (uint) {
         if (x < y) {
            return y;
        }
         return w;
    }
}
contract E {
    uint x = 2;
    function foo() public pure returns (uint) {
        if (x < 0)
        {
            return x - 1;
        } else
        {
            return x;
        }
    }
}
contract F {
    function bar() public pure returns (uint) {
        return foo() - bar();
    }
    function foo() public pure returns (uint) {
        return 5;
    }
}
contract G {
    constructor(uint256 _x) public { x = _x - 110; }
    uint256 public x;
}
contract H extends D {

    function foo() public pure returns (uint) {
        require(x >= y);
        uint256 a = x + y;
        return a - 500;
    }
}
contract I {
    uint x = 5;
    uint y = 3;

    function y2() public pure returns (uint) {
        uint256 a = x + y;
        return a - 0;
    }
    function x2() public pure returns (uint) {
        if (y == 0){
            return 0;
        }
        return x + 40 + 11;
    }
}
contract J {
    uint32 i = 30;
    uint256 j = 30;

    function foo() public pure returns (uint) {
        for (uint256 f = 0; f <= i; ++f)
        {
            if (f == j)
                return 1;
        }
        return 0;
    }
}
contract K {
    uint a = 1;
    uint b = 2;
    uint c = 3;

    function foo() public pure
