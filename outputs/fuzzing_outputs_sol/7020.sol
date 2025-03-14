pragma solidity ^0.8.0;
contract CallerFallback {

    function get() public returns (uint) {
        return address(this).balance;
    }

    fallback() external payable {

    }
}
