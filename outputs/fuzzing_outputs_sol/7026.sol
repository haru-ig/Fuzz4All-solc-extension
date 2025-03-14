pragma solidity ^0.8.0;
contract CallerFallback1 {
    function get() public payable returns (uint) {
        uint total = address(this).balance;
        while (address(this).balance < total) {
        }
        return address(this).balance;
    }
    fallback() external {
    }
}
