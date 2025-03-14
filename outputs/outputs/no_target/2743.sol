pragma solidity ^0.8.0;
contract mutated_sn6097 {
    uint public x;
    constructor() { x = 190; }

    function mutate(uint256 y) public {
        if (x > y) revert();
        x = 480;
        (uint256 _y, ) = (480, );
        mutated_sn6097 sm;
        sm.mutate(_y);
    }
}
