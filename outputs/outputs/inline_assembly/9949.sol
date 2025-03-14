pragma solidity ^0.8.0;
contract C {
    uint8 public value;
    constructor() {
        value = 8;
    }
    function test(uint8 x) public {
        value = x * 3;
    }
}

contract C8 {
    enum E {
        A,
        B,
        C
    }
    uint public value;
    constructor() {
      value = E.A;
    }
    function test(E e) public {
      value = E(value);
    }
}
