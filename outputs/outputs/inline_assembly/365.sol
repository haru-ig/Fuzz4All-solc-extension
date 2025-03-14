pragma solidity ^0.8.0;
contract G7 {
    uint y;
    uint x;
    uint z;

    address _contract;

    constructor() {
       x = 1024;
       y = 2;
       z = 27;
    }
    function add(uint x) public payable {
       x = x + y;
       z = (y * (x - 2));
       _contract.transfer(msg.value);
    }
}
