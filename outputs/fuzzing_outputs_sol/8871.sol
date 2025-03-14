pragma solidity ^0.8.0;
contract CallerAndFallbackTest2 {
    contract CallerTest is CallerAndFallbackTest {
        receive () external payable {
        }
    }
}

contract CallerAndFallbackTest3 {
    address public test;
    function callContract() public payable {
        test.call{value: address(this).balance}("");
    }
}
