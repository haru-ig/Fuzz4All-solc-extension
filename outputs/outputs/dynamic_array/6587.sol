pragma solidity ^0.8.0;
contract T9ES_mod_mutate {
    uint i6;
    event T9ES_mutate(uint _id, uint _i6);
    constructor() {
        i6 = 0x12233;
    }
    function mutate6() external {
        i6 += 0x122332332223;
        emit T9ES_mutate(i + 1, i6);
    }
}
