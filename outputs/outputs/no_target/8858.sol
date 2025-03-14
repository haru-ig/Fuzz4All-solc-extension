pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated3 is EquivalentABIv2SemanticsAreMutated1 {
    uint constant public _Value73 = 100;
    uint constant public _Amount71 = 52;
    function test () public {
        uint _result;
        uint _value72 = _Value73;
        _convert(_value72);
        require(test(0) == _Amount71);
        _convert(_result);
        require(test(test(test(0))) == _Value73);
    }


    function _convert (uint _value72) internal pure { _amount70 = _value72 - _Value73; }
}
