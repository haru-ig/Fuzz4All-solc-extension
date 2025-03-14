pragma solidity ^0.8.0;
contract modifierA{

    constructor() public payable {
        _;
    }
}

contract Dosa is modifierB2{
    uint a;
     function f() public {
        require(msg.value == a);
     }
}
