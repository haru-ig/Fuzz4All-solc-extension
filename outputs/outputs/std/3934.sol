pragma solidity ^0.8.0;
library Foo {
    function myContract() public {
    uint128 a;
    uint128 b;
    a = uint128(2);
    b = uint128(65345);
    uint128 result = a / b;
    }
    function myContract2() public {
    uint128 a;
    uint128 b;
    a = uint128(2);
    b = uint128(5);
    uint128 result = a / b;
    }
}
contract Foo {
    function myContract() public {
    uint128 a;
    uint128 b;
    a = uint128(2);
    b = uint128(5);
    uint128 sum = a + b;
    uint128 product = a * b;
    uint128 result = sum - product;
    }
    function myContract2() public {
    uint128 a;
    uint128 b;
    a = uint128(2);
    b = uint128(5);
    uint128 result = a - b;
    }
}
