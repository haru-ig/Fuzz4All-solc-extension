pragma solidity ^0.8.0;
contract Value {
    address public valueFromCaller;
    function example9() public {
        valueFromCaller = msg.sender;
    }
    receive payable {}
}
