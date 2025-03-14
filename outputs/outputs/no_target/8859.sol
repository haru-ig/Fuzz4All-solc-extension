pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    uint private _amount;
    mapping(address => uint) private _balances;
    uint constant public _Value87 = 1;
    function test (uint _value88) public returns (uint) {
        uint _result;
        uint _value89 = _value88;
        _result = _value89;
        if (_value89 == _Value87) {
            _amount = _Value87;
        }
        return _result;
    }
}
