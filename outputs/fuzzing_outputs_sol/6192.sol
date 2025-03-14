pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() private payable returns (bool calldata ret) {
        ret = false;
        return ret;
    }
    fallback() private payable external returns (bool calldata ret) {
        ret = false;
        return ret;
    }
    receive() private payable external returns (bool calldata ret) {
        ret = false;
        return ret;
    }
    function externalCall() public payable returns (bool ret) {
        ret = false;
        return ret;
    }
    function internalCall() public payable returns (bool calldata ret) {
        ret = false;
        return ret;
    }
}
