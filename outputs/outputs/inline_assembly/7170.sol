pragma solidity ^0.8.0;
contract GenesisUpgrade {
    uint256 nonce = 0;
    GenesisUpgrade internal genesisUpgrade;
    constructor() public {
        require(address(0)!= address(genesisUpgrade), "Genesis upgrade already created");
        require(nonces[address(this).balance] == 0, "Genesis upgrade already initialized");
        nonces[address(this).balance] = nonce;
        genesisUpgrade = GenesisUpgrade(address(uint160(nonces[address(this).balance])));
    }
    function upgradeContractWithoutGenesis() public {
        require(nonces[address(this).balance] == nonce, "Genesis upgrade already initialized");
        nonces[address(this).balance] = ++nonce;
        genesisUpgrade.upgrade();
    }
}
