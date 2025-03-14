pragma solidity ^0.8.0;
library Mutated {
    uint public x = 5;
    function m(uint y, uint16 y2) internal pure returns (uint, uint){
        return (x-y, (x+y+y2));
    }
}

pragma solidity ^0.6.3;
contract Contract1A {
    uint public x = 5;
    uint public y = 6;
    uint public z;
    function z2() public pure returns (uint) {
        return z;
    }
    function z3(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}
contract Contract1B is Contract1A {
    uint public v = 230;
    uint public y = y+1;
}
contract Contract2 is Mutated {
    uint public x = 10;
    uint public y = 20;
    uint public z = 500;
    function z3(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}
contract Contract3 {
    uint public z = 100;
    function f() public pure returns (uint){
        return z / 2;
    }
}
contract Test {
    uint public constant x = 100;
    uint public constant x2 = x/100;
    function f() public pure returns (uint) {
        uint z = 100;
        v = x2;
        x = 0x200;
        z /= x2;
        x = 0x2000000;
        return x + y;
    }
}
contract Test2 {
    uint public constant x = 1;
    uint public constant y = 3;
    uint constant value = 10;
    function f() public pure returns (uint) {
        return x + y + value;
    }
}
