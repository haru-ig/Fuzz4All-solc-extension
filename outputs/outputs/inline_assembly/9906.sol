pragma solidity ^0.8.0;
contract MutantMutantContract2 {
    bytes32 public contractType;
    constructor() public {
        contractType = type(MutantMutantContract2).toString();
    }
    modifier ifIsMutantContract2() {
        require(
            contractType.localeCompare("MutantMutantContract2") == 0,
            'Invalid contract type supplied'
        );
        _;
    }
    function getStorage() public ifIsMutantContract2() {
        assembly {
            let mut storage := 0x45 0x0a 0x15 0x1b 0x1d 0x1a 0x1d 0x1b 0x1d 0x18 0x16 0x14 # Move storage pointer into memory
            mstore(0x40, 0x00)
            mstore(add(storage, 0x14), 0x00)
            mstore(add(storage, 0x28), 0x00)
        }
    }
}
