pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticallyEquivalentInterface {
    function mintA() public view returns (bytes memory);
}
contract B2v08 {

    contract EquivalentABI v08 = EquivalentABIv08AbiSemanticallyEquivalentInterface(address(0));
}
