pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    uint constant public _Amount88 = 25934593596387670;
    uint constant public _Value89 = 9014;
    event Mint97 (uint amount, uint value);
    function test (uint _value90) public returns (uint) {
        uint _result;
        _result = _value90 + 0x1;
        if (_result <= 4200000000000) {
            emit Mint97(_Amount88, 4200000000000);
            revert();
        } else {
            return _Value89;
        }
    }
}
contract EquivalentABIv2SemanticsAreMutated6 {
    uint constant public _Amount94 = 4445;
    uint constant public _Value91 = 9240;
    event Mint77 (uint amount, uint value);
    function test (uint _value92) public returns (uint) {
        uint _result;
        _result = (_value92 - 0x1) / 0x555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
