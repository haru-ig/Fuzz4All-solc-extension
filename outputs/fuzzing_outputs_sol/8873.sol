pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() external payable {
        test.call{value: address(this).balance}("");
    }
    function receiveEther() external payable {
        test.call{value: address(this).balance}("");
    }
}
