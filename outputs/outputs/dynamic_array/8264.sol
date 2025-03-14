pragma solidity ^0.8.0;
contract Solidity2Mutated is Solidity2 {
    constructor() public {
        modifyX();
    }
    function modifyX() public {
        x = 5;
        y = x + y;
        z = 2*x + 4*y;
        addr = payable(msg.sender);
    }
}
