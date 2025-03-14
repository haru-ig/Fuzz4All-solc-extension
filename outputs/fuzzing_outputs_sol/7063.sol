pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable returns (bool) {
        return true;
    }
    receive () external payable payable returns void {}
}
