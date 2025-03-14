pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated6 {
    uint public _amount;
    uint public _Value232;
    address public _Value245;
    mapping(address => uint) public _balances;
    uint constant public _Value252 = 1;
    function test (uint _value246) public returns (bytes32) {
        bytes32 _result;
        _result = 0x10;
        if (_result!= 0) {
            _amount = _Value232;
        }
        return 0x4;
    }
}
contract EquivalentABIv2SemanticsAreMutated4 is EquivalentABIv2SemanticsAreMutated3, EquivalentABIv2SemanticsAreMutated2 {
    uint public _amount;
    uint public _Value261;
    address public _Value274;
    mapping(address => uint) public _balances;
    uint constant public _Value281 = 2;
    function test (uint _value275) public returns (bytes32) {
        bytes32 _result;
        _result = 0x80;
        if (_result!= 0x0 && _result!= 0x0) {
            _amount = _Value261;
        }
        return 0x0;
    }
}
