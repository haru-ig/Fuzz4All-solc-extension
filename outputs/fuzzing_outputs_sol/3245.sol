pragma solidity ^0.8.0;
contract Caller {



    receive() external payable {
        this.receive();
    }

    function highLevel() public payable {
        this.highLevel();
    }
}
