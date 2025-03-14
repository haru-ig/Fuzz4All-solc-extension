pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable {
        call{value: address(this).balance}("");
    }
}
