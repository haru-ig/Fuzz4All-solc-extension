pragma solidity ^0.8.0;
contract SimpleChildUpgrade {
    constructor() public payable {}
    receive() external payable {
        address childAddr = GenesisUpgrade(childAddress).childAddress;
        selfdestruct(childAddr);
    }
}
