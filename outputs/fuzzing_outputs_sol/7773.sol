pragma solidity ^0.8.0;
contract NewSemanticsFallback {
    uint256 internal value;
    fallback() public { value += msg.value; }
}

pragma solidity ^0.8.0;
contract Caller {
    uint256 internal value;
    fallback() public {
        value -= msg.value;
        value += call(address(this), type(NewSemanticsFallback).selector);
    }
}
