pragma solidity ^0.8.0;
contract Test29999Mutated {
    uint[] data0;
    uint[] public data1;
    constructor (uint[] memory _dummy_2, uint _x) public {
        data0.push(0x00100000);
        data1 = _dummy_2;
        data1[_x] = 0x00300000;
    }
    fallback () external {
        data1.push(0x00400000);
    }
}
