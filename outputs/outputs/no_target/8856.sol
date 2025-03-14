pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated8 {
    uint constant public _Max86 = 0xffffffffffffff00000000000000000000FFFFFFFFFFFFFFF;
    uint constant public _Min86 = 0xffffffffffffff0;
    event Mint33 (uint max, uint min);
    function test (uint _max87, uint _min88) public returns (uint) {
        uint _result;
        _result = (_max87 > _Min86 || _max87 >= _Value80) && _min88 < _Max86 && _min88 > _Min86? _Value80 : _Value81;
        if (_result < _Value82) {
            emit Mint33(_Max86, _Min86);
            return _Min86;
        } else {
            return _result;
        }
    }
}
