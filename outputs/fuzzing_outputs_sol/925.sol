pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {}
    receive () external payable {
        revert();
    }
}
