pragma solidity ^0.8.0;
library MyMath {
    function sub(uint64 a, uint64 b) public pure returns(uint64) {
    return a-b;
}
    function mul(uint64 a, uint64 b) public pure returns(uint64) {
    return a * b;
}
}
contract Foo {
    function myContract() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 3;
    uint64 newA= MyMath.sub(a, b);
    }
    function myContract2() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 3;
    uint64 newA= MyMath.mul(a, b);
    a = 257;
    b = 11;
    newA = MyMath.mul(a, b);
    }
}
