pragma solidity ^0.8.0;
library MyMath {
    function div(uint64 a, uint64 b) public pure returns(uint64) {
    uint64 result = (a * 250 + uint64(0)) / b;
    return result;
    }
}

contract Foo {
    function myContract() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 65345;
    uint64 newA= MyMath.div(a, b);
    }
    function myContract2() public {
    uint64 a;
    uint64 b;
    a = 2;
    b = 5;
    uint64 newA= MyMath.div(a, b);
    a = 5;
    b = 5;
    newA = MyMath.div(a, b);
    uint64 result = a - b;
    uint64 finalSum = a + b;
    }
}
