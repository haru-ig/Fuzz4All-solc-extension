pragma solidity ^0.8.0;
contract mutated_sn6097 {
    uint public x;
    constructor() { x = 190; }
    modifier onlyone() {
        require(x >= 152, "must be at least 152");
        _;
    }
    function mutate(uint arg) public onlyone {
        x = 480;
        uint _y = 999;
        mutated_sn6097 sm;
        sm.mutate(_y);
    }
}
