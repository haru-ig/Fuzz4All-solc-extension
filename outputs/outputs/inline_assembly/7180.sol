pragma solidity ^0.8.0;
contract GenesisUpgradeV2 {
    address public childAddress;
    constructor() public {
        childAddress = new GenesisUpgrade(childAddress);
    }
}
