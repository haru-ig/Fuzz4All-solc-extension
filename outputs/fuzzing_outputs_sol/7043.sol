pragma solidity ^0.8.0;
contract Caller {
    function fallback() payable external {}
    function setContractAddress(address addr) external {
        contractAddr = addr;
    }
}
