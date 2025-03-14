pragma solidity ^0.8.0;
contract EquivalentABIv05SemanticsAreMutated_2 {
    uint constant public _Amount96_2 = 9999998342536237904000000000000;
    uint constant public _Value28_2 = 43;
    event Mint6 (bytes32 a, uint value);
    function mintB () public {
        emit Mint6(keccak256(abi.encodePacked(_Amount96_2, _Value28_2)), _Value28);
    }
}
