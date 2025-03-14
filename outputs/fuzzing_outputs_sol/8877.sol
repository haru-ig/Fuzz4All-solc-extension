pragma solidity ^0.8.0;
contract CallerAndFallbackTest is CallerAndFallback {
    function callContractWithFallback() public payable {
        CallerAndFallback.fallback();
    }
    function callWithFallback() public payable {
        callContractWithFallback();
    }
}

pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function call() external payable {
        test.call{value: address(this).balance}("");
    }
    function receiveEther() external payable {
        test.call{value: address(this).balance}("");
    }
    function callWithFallback() public payable {
        CallerAndFallback.fallback();
    }
    function callWithoutFallback() public payable {
        test.call{value: address(this).balance}("");
    }
}
