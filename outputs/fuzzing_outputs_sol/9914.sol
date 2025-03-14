pragma solidity ^0.8.0;
contract New {
    fallback function new_() pure public returns(uint) {
        return 2;
    }
}
