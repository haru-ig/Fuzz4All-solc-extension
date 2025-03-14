pragma solidity ^0.8.0;
contract Address {
    fallback() external payable{
        selfdestruct(0xDEADDEE1);
    }
}
