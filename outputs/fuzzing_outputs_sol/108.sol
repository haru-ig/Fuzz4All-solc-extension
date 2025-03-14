pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionMutated {
    constructor(uint k) public { }
    fallback() external payable { }
    function getData(uint) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
}
