pragma solidity ^0.8.0;
contract TestCaller2 {
    uint public constant value = 5;
    function set() public {
        fallback();
    }
    receive() external payable {}
}
