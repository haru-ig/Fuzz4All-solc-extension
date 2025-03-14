pragma solidity ^0.8.0;

contract ContractWithFallback {
    function fallback() external payable {}
}

contract Caller {
    address contractAddr;
    function fallback() external payable {}
    function setContractAddress(address addr) public {
        contractAddr = addr;
    }
    function callFallbackFunction() external returns (uint) {
        (bool success, bytes memory data) = contractAddr.call{value: fallback.value}("");
        if (!success) throw;

        return abi.decode(data, (uint));
    }
}
