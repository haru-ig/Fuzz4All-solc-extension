pragma solidity ^0.8.0;
contract L24{
    constructor() public payable { }
    receive() external payable {
        modifyCalled();
    }
}
