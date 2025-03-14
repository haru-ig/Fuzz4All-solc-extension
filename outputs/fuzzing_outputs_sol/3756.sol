pragma solidity ^0.8.0;
contract Example12 is Example11 {
    function example12() public {
        emit ExampleEvent(2);
    }
}
contract Example13 {
    fallback() external payable {
        emit ExampleEvent(3);
    }
}
