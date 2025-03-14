pragma solidity ^0.8.0;
contract Test {
    uint256 public test;
    uint public _test = 30;
    function add() public {
        test = test + _test;
    }
    function get() public pure returns(uint) {
        return _test;
    }
    function set(uint _new_value) public{
        _test = _new_value;
    }
    event LogTest(address _who, uint _amount);
    function Test() public {}
}
