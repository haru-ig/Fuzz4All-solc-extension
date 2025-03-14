pragma solidity ^0.8.0;
contract EquivalentContractDeprecatedABIv08Abi {
    function mintA() public { }
}

pragma solidity ^0.8.0;
contract EquivalentABIv2 {
    struct TransferParams {
        uint160 _to;
        uint160 _value;
    }
    function mintA(bytes32 data) public { }
    function mintB(TransferParams memory data) public { }
}
contract EquivalentContractDeprecatedABIv2 {
    struct TransferParams {
        uint _to;
        uint _value;
    }
    function mintA(bytes32 data) public { }
    function mintB(TransferParams memory data) public { }
}
contract EquivalentABIv1AbiSemanticallyEquivalentInterface {
    function mintA() public { }
}
pragma solidity ^0.7.4;
contract EquivalentContractDeprecatedABIv1 {
    function mintA() public { }
}
contract EquivalentABIv07AbiSemanticallyEquivalentInterface {
    function mintA() public { }
}
