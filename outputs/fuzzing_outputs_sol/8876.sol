pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address payable test;
    function () external payable payable { }
    function () external payable payable { }
    function callContract() external payable {
        test.call{value: address(this).balance}("");
    }
    function receiveEther() external payable {
        test.call{value: address(this).balance}("");
    }
}
