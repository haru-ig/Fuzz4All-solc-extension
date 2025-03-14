pragma solidity ^0.8.0;
contract Mutator {
    uint256 x;
    uint256 y;
    address a;
    constructor () public {
        a = msg.sender;
        x = 3;
        y = 4;
    }
    modifier mutator {
        x = x+1;
        y = y+1;
        a = msg.sender;
        _;
    }
function mutate() public mutator {

    }
}
