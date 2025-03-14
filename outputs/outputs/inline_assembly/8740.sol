pragma solidity ^0.8.0;
contract Semantic{
    uint x;
    constructor() public{
        x = 1;
    }
    function change()public payable{
      x += 1;
    }
}
