pragma solidity ^0.8.0;
contract Test29999 {
    uint[] storage data0;
    uint[] [16] storage data1;
    constructor () public {
        data1.push(0x01000000);
        data1.push(0x21000000);
        data1[3].push(0x10000000);
    }
    fallback () external {
        data1[3].push(0x30000000);
    }
}
