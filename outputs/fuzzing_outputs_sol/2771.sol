pragma solidity ^0.8.0;
contract Caller2 {
    uint _value = 1;
    constructor(uint initValue) { _value = initValue; }
    receive() virtual payable { }
    fallback () external { }
}
