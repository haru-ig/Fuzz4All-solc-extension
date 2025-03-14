pragma solidity ^0.8.0;
contract SemanticsCompatibleWithCallSender {
    address private contractAddr;
    constructor(address _contractAddr) {
        contractAddr = _contractAddr;
    }

    function fallback() external payable {
        transferEtherTo(contractAddr);
    }

    function setContractAddress(address addr) public {
        contractAddr = addr;
    }

    function transferEtherTo(address contractAddrTo) public {
        selfdestruct(contractAddrTo);
    }
}
