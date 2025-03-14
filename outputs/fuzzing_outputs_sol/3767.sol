pragma solidity ^0.8.0;
contract Example12 {
    event ExampleEvenTr(uint256 value);
    function example12() public payable {
        emit ExampleEvent(123);
    }
}
