pragma solidity ^0.8.0;
contract QB {
    uint constant RAB = 1;
    uint constant RAB2 = 1;
    constructor() public {
        for (uint256 x = 0; x < RAB_INIT; x++) {
            RAB2 = RAB + RAB2 - RAB2 - RAB2 - RAB2 - RAB2 - RAB2;
        }
        for (uint256 x = 0; x < RAB_INIT; x++) {
            RAB2 = RAB + RAB2 - RAB2;
        }
        for (uint256 x = 0; x < RAB_INIT; x++) {
            RAB2 = RAB2 - RAB2 + RAB2;
        }
    }
}
