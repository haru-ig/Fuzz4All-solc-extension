pragma solidity ^0.8.0;
contract ContractWithFallback {
    function fallback() external {
    }
}
contract Caller {
    address contractAddr;
    function fallback() external payable {}
    function setContractAddress(address addr) public {}
    function simpleCall() public payable {
        contractAddr.call{value: msg.value}(msg.data);
    }
}
