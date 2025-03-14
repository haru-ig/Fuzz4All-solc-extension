pragma solidity ^0.8.0;
contract SentryMutateCaller{
    fallback() external payable{}
    receive() external payable{
    }
    fallback() public payable{
    }
    fallback() public onlyOwner{
    }
    fallback() public {
    }
}
