pragma solidity ^0.8.0;
contract CallTest {
    uint public _total = 0;
    function receive() external payable{}
    function call() public returns (uint) {
        _total += msg.value;
        return _total;
    }
}
