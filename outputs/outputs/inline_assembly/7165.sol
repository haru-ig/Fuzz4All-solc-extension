pragma solidity ^0.8.0;
contract SybilUpgrade {
    constructor(GenesisUpgrade genesis) public GenesisUpgrade(genesis) {
    }
}

pragma solidity >0.5.0;
contract BadUpgrade {
    constructor() public {}
}
