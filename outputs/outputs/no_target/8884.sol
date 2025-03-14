pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated9 {
    uint public _amount;
    uint public _Value250;
    address public _Value323;
    mapping(address => uint) public _balances;
    uint constant public _Value334 = 1;
    function test (uint _value324) public returns (bytes32) {
        bytes32 _result;
        _result = 0x0;
        if (_result!= 0) {
            _amount = _Value323;
        }
        bytes memory _value342 = "\x0\x0\x0\x0\x0";
        if (_value342 < 0) {
            _amount = _Value323;
        }
        else {
            _amount = _Value334;
        }
        return 0x0;
    }
}
