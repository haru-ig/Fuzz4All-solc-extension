pragma solidity ^0.8.0;
contract Fallback {
    contract NoFallbackImpl {
        fallback constructor (uint _a) { address(new NoFallback()); }
        receive () external payable { revert(type(Fallback).toString()); }
    }
    NoFallback dummy;
    mapping (address => bool) hasFallbackExecuted;
    modifier OnlyFallback() {
        require(hasFallbackExecuted[msg.sender], "Caller did not exec fallback()");
