pragma solidity ^0.8.0;
contract Bar {
    receive() public payable {
        return ;
    }
    fallback () public payable {
    }
}
