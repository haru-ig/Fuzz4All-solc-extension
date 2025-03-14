pragma solidity ^0.8.0;
contract R5 {
        mapping (address => uint) public balance;
        mapping (address => uint) public balance2;

    constructor() public {
        balance[msg.sender] = 10;
        balance2[msg.sender] = 10;
    }

    function getFromBalance() public view returns (uint, uint) {
        return (10,10);
    }
    function getFromBalance2() public view returns (uint, uint) {
        return (10,10);
    }

    function setToBalance(uint _new) public {
        require(msg.sender!= address(0), "cannot set balance to zero");
        balance[msg.sender] = _new;
        balance2[msg.sender] = _new;
    }
}
