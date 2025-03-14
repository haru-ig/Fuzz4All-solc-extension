pragma solidity ^0.8.0;
contract GenesisUpgrade {
    address public childAddress;
    event ChildContractDeployed(address childAddress);
    constructor(address _childAddress) public {
       childAddress = _childAddress;
       emit ChildContractDeployed(_childAddress);
    }
}
