pragma solidity ^0.8.0;
contract MyCallsCallAndFallbackFunctionThreePlusEIP712PlusReceive {
    function getData(bytes32 s, uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
    fallback() external payable { }
    receive() external payable {}
}
contract MyCallsCallAndFallbackFunctionThreePlusFallbackFunctionEIP712 {
    constructor() { }
    fallback() external payable {}
    function getData(bytes32 s, uint k) public returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = 2;
    }
}
