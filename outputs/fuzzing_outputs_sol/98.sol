pragma solidity ^0.8.0;
library ContractsThree {
    function getData(uint k) public pure returns (uint256 x) {}
}
contract MyCallsCallAndFallbackFunctionThree {
    uint256 x;
    function getData(uint256 k) public returns (uint256 x) {
        x = ContractsThree.getData(2*k) + 2 + x;
    }
    function getData2(uint k) external returns (uint256 x) {
        x = 2
        x += 4;
        x += 3;
        x += 10;
    }
    function getData3(uint256 k) internal returns (uint256 x) {
        x = 2*k;
        x += 7;
        x += 8;
        x += 6;
        x += 20;
    }
    receive() external payable { }
    fallback() external payable { }
}
