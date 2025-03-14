pragma solidity ^0.8.0;
contract Example11 {
    event ExampleEvent(uint256 value);
    function example11() public {
        emit ExampleEvent(1);
    }
}
