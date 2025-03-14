pragma solidity ^0.8.0;
contract ContractWithFallback {
    function fallback() payable external {}
}

pragma solidity ^0.8.0;
contract Caller {

    address contractAddr;

    function fallback() external payable {}
    function setContractAddress(address addr) public {
        contractAddr = addr;
    }
}
