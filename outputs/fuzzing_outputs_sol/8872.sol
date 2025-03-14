pragma solidity ^0.8.0;
contract CallerAndFallbackTestOld {
    address public test;
    function callContract() public payable {
        test.call{value: address(this).balance}("");
    }
}
