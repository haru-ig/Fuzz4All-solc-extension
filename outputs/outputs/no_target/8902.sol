pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 is EquivalentAbiMutations_v1 {
    uint constant public _Value203 = _Value206;
    uint constant public _Value206 = _Value220;
    uint constant public _Value220 = _Value221;
    uint constant public _Value221 = _Value225;

    function test (uint  _value216, uint  _value224) public returns (uint, uint, uint, uint) {
        return (uint16(10000, "test"), uint8(1000, "test"), uint4(100, "test"), uint2(10, "test"));
    }
}
