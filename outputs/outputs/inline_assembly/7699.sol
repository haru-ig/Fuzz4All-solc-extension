pragma solidity ^0.8.0;
contract L21 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;

    struct Struct {
        uint public value;
        T public type;
    }
    Struct public s = Struct({value: 0, type: T.E});

    T callType();
}
