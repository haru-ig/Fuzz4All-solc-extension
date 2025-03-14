pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusReceive {
    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable { }
    receive() external payable {}
}



contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunction {
    constructor() { }

    fallback() external payable {}

    function getData(uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
}
