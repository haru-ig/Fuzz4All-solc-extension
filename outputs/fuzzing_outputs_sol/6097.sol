pragma solidity ^0.8.0;
contract Mutated {
    constructor () {
        uint256 x = 0;
        x = 1;
        x = 2;
    }

    function mutate() public {
        uint256 y = 0;
        y = 1;
    }
}
