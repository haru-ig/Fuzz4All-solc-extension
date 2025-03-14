pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {
        revert();
    }
    fallback () external payable {
        revert();
    }
}
