pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated9 {
    uint public _amount;
    uint public _Value206;
    uint160 public _Value35;
    bool public _Value4;
    mapping(address => uint) public _balances;
    uint constant public _Value101 = 1;
    function test (address _value35, uint _Value214, uint _Value220, uint _Value31, uint _value221, mapping(bytes32 => address) _Value40, uint _value222) public returns (bytes32) {
        bytes32 _result;
        _result = 0x0;
        if (_Value214!= 0){
            _amount = _Value214;
        }
        if (_Value214!= 0){
            _Value225 = 1;
        }
        if (_Value214!= 0){
            _Value101 = 1;
        }
        if (_Value214!= 0){
            _Value35 = _value35;
        }
        if (_Value214!= 0){
            _Value4 = _Value219;
        }
        if (address(0)!=_value35){
            _balances[(address(_value35))] += ((_Value214)-(_Value214));
        }
        if (_value222!= 0){
            _amount = _Value222;
        }
        if (address(0)!=(_value35)){
            _amount += _Value225;
        } else {
            if (_Value225!= 0){
                _Value253 = 1;
            }
            _amount = ((_Value214)+_Value222);
        }
        return _result;
    }
}
