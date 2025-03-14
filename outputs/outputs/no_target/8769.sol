pragma solidity ^0.8.0;
contract EquivalentInterface {
    function mintA() public { }
}
contract EquivalentABIv08AbiV2SemanticallyEquivalentInterfaceImplementation is EquivalentABIv08AbiV2SemanticallyEquivalentInterface {
    function mintA() public {
        EquivalentInterfaceImplementation(0x000000000000000000000000000000000000000).mintA;
    }
}
