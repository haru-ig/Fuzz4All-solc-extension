pragma solidity ^0.8.0;
contract Genesis {
    uint32 public a;

    constructor () public {
        emit Log();
        a = 1;
    }

    fallback () public {
        emit Log();
    }
    event Log();
}
