pragma solidity ^0.8.0;
contract ContractWithFallback {
    function fallback() external {
        throw;
    }
}
contract Caller {
    address payable contractAddr;
    function fallback() external payable {}
    function simpleCall() external payable {
        contractAddr.call{value: msg.value}(msg.data);
    }
}
