pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThree {
    uint256 public x;
    uint256 public y;
    function setData(uint y) public{
        y = 1;
        uint x_save = x;
        x = 1;
        require(x_save == 1);
    }
    receive() external payable {
        x = 2;
    }
    fallback() payable external {
        x = 2;
    }
}
