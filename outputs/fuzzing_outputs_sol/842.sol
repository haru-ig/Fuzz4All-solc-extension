pragma solidity ^0.8.0;
contract Complex {
    function nonReturnFallback(uint256[] memory _arg) external {
        revert();
    }
}
