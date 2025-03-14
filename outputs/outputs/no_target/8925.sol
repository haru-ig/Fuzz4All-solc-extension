pragma solidity ^0.8.0;
contract EquivalentMutations_v2_Mutant is EquivalentAbiMutations_v2_Mutant {
    bool constant public _Value208 = true;
    uint256 constant public _Value209 = 3;
    uint constant public _Value228 = 83;
    uint constant public _Value230 = 4889;
    uint constant public _Value231 = 550;
    uint constant public _Value247 = 338;
    uint constant public _Value263 = 0;

    function test2 (uint256  _value217, uint256  _value223, uint256  _value244) public returns (_value200, uint256, uint256, uint256) {
        (uint8 _value216, uint8 _value220, uint8 _value243, uint8 _value257) =  super.test(_value217, _value224);
        _value200 = _value216 + _value208;
        _value257 = _value216 + _value220;
        _value257 = _value220 + _value216;
        _value257 = _value220 + (_value217 - 1);
        _value217 = _value257 + 209;
        _value223 = _value257 + 5430;
        _value223 = 2032 + _value257;
        _value257 = 2033 + uint8(_Value228);
        _value216 = _value257 + _value243;
        return ((_value257 * _value257), (_value217 + uint8(_Value263)), 445 + _value230, uint256(_Value231));
    }
}
