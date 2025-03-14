pragma solidity ^0.8.0;
contract ChangeFallback {
    uint256 public constant value = 1;
    fallback function() public payable {
        revert();
    }
    receive() external payable {}
}
