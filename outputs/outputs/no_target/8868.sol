pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated7 {
    uint public _amount;
    uint public _Value87;
    mapping(address => uint) public _balances;
    uint constant public _Value88 = 1;
    uint test() public {
        uint _result;
        if (true) {
            _result = test();
            EquivalentABIv2SemanticsAreMutated2.test(0);
        } else {
            _amount = _Value87;
        }
        return;
    }
}


pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated2 {
    uint public _amount;
    uint public _Value87;
    mapping(address => uint) public _balances;
    uint constant public _Value88 = 1;
    uint test() public returns (uint) {
        uint _result;
        if (_result!= 0) {
            _amount = _Value87;
        }
        return 0;
    }
}
