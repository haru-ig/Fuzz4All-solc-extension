pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


contract sn6097 {
    uint public x;
    constructor() {
        x = 1;
    }
    function sn6097() public {}

    function mutate(uint) public {
        mutated_sn6097 sm;
        sm.sm();

        sm.setX(1);
        sm.setX(2);
        sm.setX(3);
        sm.setX(x);

    }
}
