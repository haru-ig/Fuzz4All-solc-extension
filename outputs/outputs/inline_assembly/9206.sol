pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000_000_000;
    function mutated(uint) public pure returns (uint) {
        return (((uint(uint(uint(uint(1_000_000_000_000)))) * 16) * 60) / _uint32);
    }
}
contract Mainnet {
    function _mint(address to, uint amount) internal {
        (bool success, ) = to.call{value: amount}("");
        require(success, "");
    }
}
contract Deployed {
    Mainnet mainnet = Mainnet(0xc778417e063141139fce010982780140aa0cd5ab);
    constructor() {
        mainnet._mint(0x21f6faE2B747CAcD0509F69B25A47997363CE5D2, 1000);
    }
}
