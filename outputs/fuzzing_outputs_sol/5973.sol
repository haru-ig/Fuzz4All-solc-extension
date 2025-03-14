pragma solidity ^0.8.0;
contract Caller {
    function doSomething() public {
        uint256 _value1 = 30;
        uint256 _value2 = 10;
        Caller callee = new Caller();
        callee.fallback(_value1,_value2);
    }
    fallback(function (uint _value1, uint _value2) external) public {
        Caller callee = new Caller();
        callee.fallback(_value1,_value2);
    }
    receive() external payable {
        Caller callee = new Caller();
        callee.fallback(_value1,_value2);
    }
    function fallback(uint _value1, uint _value2) public pure {}
}
