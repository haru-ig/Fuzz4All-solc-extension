pragma solidity ^0.8.0;


contract Caller is Caller {

    receive() external payable {
        uint price = 5;


        require(msg.value >= price);

        msg.sender.transfer(msg.value);
    }
}

contract Call1 is Caller {
    constructor(uint _price) {
        price = _price;
    }
    receive() external payable {
        require(msg.value >= price);
        msg.sender.transfer(msg.value);
    }
    uint price;
}
