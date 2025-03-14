pragma solidity ^0.8.0;
contract MutateBigNeg18 {
    constructor() {
        uint256 x = 2500;





        x += 4294967296 * -0x1FED41FED41FED41FED41FED41FED41FED41FED4;
        uint64_t neg = uint64_t(-0x001FED41FED41FED41FED41FED41FED41FED41FED4) | 0x200UL;
        x += (uint64_t(10) << neg);
    }
}
