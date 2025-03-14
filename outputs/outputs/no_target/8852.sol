pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    uint constant public _Amount89 = 2611111;
    uint constant public _Value90 = 9385;
    address public _Address62 = 0x38e18450248b69792316f2c106e88072847ba22e;
    event Mint24 (uint amount, uint value, address addr);
    function test2 (uint _value91, uint _value92) public returns (uint) {
        uint _result;
        _result = _value91 + _value92;
        if (_result < _Value90) {
            emit Mint24(_Amount89, _Value90, _Address62);
            return _Value90;
        } else {
            return _result;
        }
    }
}
