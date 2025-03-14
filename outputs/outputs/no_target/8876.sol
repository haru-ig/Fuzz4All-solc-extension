pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated7 {
    uint public _amount;
    uint public _Value166;
    mapping(address => uint) public _balances;
    uint constant public _Value168 = 1;
    function test (uint _value169) public returns (uint) {
        require(_value169!= 0, "1_1");
        uint _result;
        _result = _amount;
        _amount += _Value168;
        return 0;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated8 {
    uint public _amount;
    uint public _Value166;
    mapping(address => uint) public _balances;
    uint constant public _Value168 = 1;
    uint public constant _Value170 = 2;
    function test (uint _value171) public returns (uint) {
        require(_value171!= 0, "1_1");
        unchecked {
            uint _result;
            _result = _amount;
            _amount += _Value168;
        }
        require(_amount > _Value166, address(0x1));
        uint _result1;
        _result1 = _amount + _Value170;
        return 0;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated10 {
    uint public _amount;
    uint public _Value166;
    mapping(address => uint) public _balances;
    uint constant public _Value168 = 1;
    uint public constant _Value170 = 2;
    function test (uint _value171) public returns (uint) {
        uint _result;
        _result = _amount;
        require(_result == _amount, "1_1");
        _amount += _Value168;
        require(_amount < _Value166, address(0x1));
        uint _result1;
        _result1 = _amount + _Value170;
        return 0;
    }
}
