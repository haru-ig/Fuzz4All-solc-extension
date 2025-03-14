pragma solidity ^0.8.0;
contract FallbackCallMutated {
    mapping(address => bytes32[]) public contractCalls;
    mapping(address => address) public nonContract;
    function Fallback() public payable {}
    function call(uint) public payable {}
    receive() external payable {}
    function getContractCalls() public view returns (bytes32[] memory) {
        return contractCalls[nonContract[tx.origin]];
    }
    function mutate() public notPayable {
        contractCalls[nonContract[tx.origin]].push("fallback");
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function Caller() public {
        nonContract[tx.origin] = address(this);
        nonContract[address(new FallbackCall())] = address(this);
        nonContract[address(new FallbackCallMutated())] = address(this);
    }
    receive() external {
        nonContract[tx.origin].fallback();
        nonContract[address(new FallbackCall())].fallback();
        nonContract[address(new FallbackCallMutated())].fallback();
    }
}
