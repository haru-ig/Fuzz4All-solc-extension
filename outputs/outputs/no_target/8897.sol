pragma solidity ^0.8.0;
contract EquivalentAbiMutations2 {
    uint constant public _Value203 = 1;
    uint constant public _Value206 = 1;
    uint constant public _Value220 = 1;
    uint constant public _Value221 = 1;
    uint constant public _Value225 = 1;
    mapping(uint => uint) public valueMapping =
    {
        1: _Value220,
        2: _Value216,
        3: _Value224,
        5: _Value225,
        6: _Value216,
        7: _Value217,
        8: _Value220,
        9: _Value221,
        11: _Value222,
        12: _Value216,
        14: _Value223,
        15: _Value217,
        17: _Value221,
        18: _Value223,
        20: _Value222,
        21: _Value223,
        23: _Value225,
        35: _Value221,
        37: _Value223,
        39: _Value203,
        40: 1,
        41: _Value221,
        45: 1,
        46: _Value216,
        48: _Value203,
        50: _Value219,
        51: _Value221,
        53: 1,
        54: 1,
        55: _Value220,
        58: _Value225,
        66: _Value220,
        67: _Value203,
        69: _Value217,
        70: _Value219
    };
    function test (uint  _value216, uint  _value224) public returns (uint, uint, uint, uint) {
        return (valueMapping[_value216], valueMapping[_value224], valueMapping[_value220], valueMapping[_value203]);
    }
}
