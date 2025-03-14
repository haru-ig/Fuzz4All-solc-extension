pragma solidity ^0.8.0;
contract MyContract {
    fallback function highLevel() public payable {
       this.highLevel();
    }
}
