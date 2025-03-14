pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v4 is EquivalentAbiMutations_v3 {
    uint256 constant private _Value0 = 29;
    uint constant _Value1 = 92;
    uint256 constant private _Value4 = 36;
    uint256 constant private _Value343 = 10000;
    uint256 constant private _Value34300000000000000000;
    uint8 const private _Value32 = 20;
    uint32 constant private _Value33 = 9;
    uint32 constant private _Value380 = 343000000000000000;
    uint216 constant private _Value4768 = 4768;
    uint28 private _Value87;
    event TestEvent (uint160 _value0, uint _value1, uint256 _value2, uint256 _value3, uint256 _value4, uint256 _value5, uint32 _value6, uint28 _value7, bool _value8, uint32 _value9, uint32 _value10);
    function test (uint256  _value22) public {
        uint256 result = keccak256(abi.encode(
            _Value22,
             _Value23,
            _Value20,
            _Value0 + uint256(_Value1),
            _Value4 + uint256(_Value343),
            _Value34300000000000000000 + uint256(_Value3430000000000000000),
            _Value380 + uint256(_Value32),
            _Value4768 + uint256(_Value20),
            _Value87 + uint256(_Value380),
            22222,
            _Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33,_Value33
        ));
        uint32 i = 20000000000;
        uint a = 0;
        while (a < 256) {
            bytes memory x = bytes(uint256(
