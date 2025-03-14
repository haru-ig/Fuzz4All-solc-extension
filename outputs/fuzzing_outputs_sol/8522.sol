pragma solidity ^0.8.0;

contract CallerExample10 {
    function CallerExample9Contract() public {}
    function sub() public pure {
        return CallerExample9Contract.subtract(8, 10);
    }
    function add() public pure {
        sub();
    }
    receive() external payable {}
}
