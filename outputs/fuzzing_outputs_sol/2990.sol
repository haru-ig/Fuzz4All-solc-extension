pragma solidity ^0.8.0;
contract MovedCaller {
    address public newAdress;
    constructor(address callerAdress) {
        newAdress = callerAdress;
    }
    function () public payable {
        address oldAdress = newAdress;
        newAdress = msg.sender;
        newAdress.transfer(this.balance);
        newAdress = oldAdress;
    }
}
