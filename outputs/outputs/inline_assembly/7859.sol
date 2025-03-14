pragma solidity ^0.8.0;
contract L26{
    address payable sender;
    constructor() public {
        sender = payable(0x00);
    }
    function modifyCalled() public {
        sender.transfer(address(new L23).balance);
    }
}
