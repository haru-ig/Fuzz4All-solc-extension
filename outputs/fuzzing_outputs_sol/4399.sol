pragma solidity ^0.8.0;
contract FallbackToEther {
    receive() external payable{}
}





contract FallbackToAddress {
    fallback() external payable{
        self.transfer(address(this));
    }
}
contract AddressFallbackToAddress {
    fallback() external{
        self.transfer(address(this));
    }
}<issue_closed>
