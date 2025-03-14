pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2_Mutant {
    uint constant public _Value201 = 89;
    uint constant public _Value206 = 202;
    uint constant public _Value221 = 3;
    uint constant public _Value225 = 204;
    function test (uint256  _value216, uint256  _value224) public returns (uint256, uint256, uint256, uint256) {
        return (uint8(_Value201), uint8(_Value206), uint8(_Value221), uint8(_Value225));
    }
}
