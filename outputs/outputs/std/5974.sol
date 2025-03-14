pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges5 {
    mapping(uint256 => bool) public boolMap;

    constructor()
    {
        uint256 x;
        x = boolMap[0];
    }

    function updateMap(bool _value) public
    {
        boolMap[getUintFromBool(_value)] = _value;
    }

    function getUintFromBool(bool _bool) private
    {
        if (_bool)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
}
