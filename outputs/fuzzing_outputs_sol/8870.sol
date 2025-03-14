pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    event TestEvent();
    function callContract() public payable {
        test.call{value: address(this).balance}("");
        emit TestEvent();
    }
}


pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    receive() external payable {}
}
