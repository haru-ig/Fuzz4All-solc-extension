pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        a = x+a;
        b = y+b;
        c = a+b;
        c = a-b;
        a = b+x;
        a = b-x;
        return (a, c);
    }
}
contract S {
    function f() internal pure returns (uint, address){
        uint a;
        uint b;
        (b, a) = g(1, 2);
    }

    function g(uint z) internal pure returns (uint, address){
        uint c;
        b = x+y;
        a = x+z;
        b = x+b;
        c = y+x;
        c = a+c;
        return (a, b+z);
    }
}

contract E {
    function e(uint x) internal pure returns (uint){
        uint a;
        uint b;
        (a,b) = g(x);
    }

    function g(uint z) internal pure returns (uint, uint) {
        uint c = x*y;
        c = x-y;
    }
}

pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint z) internal pure returns (address, uint, uint){
        uint a;
        uint b;
        (a, c) = g(x);
        (b, z) = g(c);
        return (b, a, 0);
    }
}
