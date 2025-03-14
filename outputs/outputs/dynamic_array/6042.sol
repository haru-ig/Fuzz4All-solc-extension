pragma solidity ^0.8.0;
contract Test29999 {
    uint[] data0;
    uint[] public data1;
    constructor (uint[] memory _dummy_2) public {
        data0.push(0x00100000);
        data1 = _dummy_2;
    }
    fallback () external {
        data1.push(0x00200000);
    }
}
