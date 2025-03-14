pragma solidity ^0.8.0;
contract Fallback {


    bytes4 functionSelector = bytes4(keccak256(type(fallback).selector));
    fallback(uint) external {
        require(msg.sig!= functionSelector);
        (bool success, bytes memory data) = address(payable(msg.sender)).call(calldata(msg.data));
        require(success);
        assert(data.length == 0);
    }
}
