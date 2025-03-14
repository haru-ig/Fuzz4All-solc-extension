pragma solidity ^0.8.0;
contract FallbackCall {
    mapping(address => bytes32[]) public contractCalls;
    mapping(address => address) public nonContract;
    function Fallback() public payable {}
    function call(uint) public payable {}
    receive() external payable {}
    function getContractCalls() public view returns (bytes32[] memory) {
        return contractCalls[nonContract[tx.origin]];
    }
}
