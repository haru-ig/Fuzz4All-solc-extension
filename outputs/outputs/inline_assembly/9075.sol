pragma solidity ^0.8.0;
interface I { }
contract C {
    I value;
    uint a, b;
    assembly {
        value := 0x0e199a01
        a := a + value
        b := a + 3
    }
}
