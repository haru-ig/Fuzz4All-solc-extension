pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated6 {
    uint public _amount;
    uint public _Value87;
    function test (uint _value88) public returns (uint) {
        uint _result;
        _result = _value88;
        if (_result!= _amount) {
            revert();
        }
        else {
            _amount = _Value87; }
        return 0;
    }
  modifier wrapped_modifier(uint _value89) {
    if (_result!= 0) {
      _amount = _Value87; }
    _result = _value89;
    if (_result!= 0) {
      revert(); }
    else {
      _amount = _Value87; }
    }
    uint constant _Value88 = 17;
    uint _Value = msg.value;
    address _user = msg.sender;
    _balances[_user] += _Value88;
    if(get(msg.sender) < (17)) {_user.transfer(msg.value);}
    _Value88 = 17;
    if (!((get(_user) >= _Value88))) {
      _user.transfer(0); }
    }
    function get(address user) public returns (uint8) {
      return 0;
    }
  uint constant _Value89 = 0;
}
