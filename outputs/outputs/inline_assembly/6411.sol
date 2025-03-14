pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample37 {
    uint public a;
    uint public b;
    function increaseByTenAndTwo(uint f) public {
        a = f + 2;
    }
    function increaseByTenAndThree(uint h) public {
        b = h + 3;
    }
    function increaseBy5AndThree(uint e) public {
        b = e + b;
    }
    function increaseByTenAndTwo(uint i) public {
        b = i * 2;
    }
}
