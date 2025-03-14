pragma solidity ^0.8.0;
contract Test29999 {
    uint[] public data;
    uint[] public data1;
    constructor (uint[] memory _dummy_1) public {
        data.push(1);
        data.push(2);
        data1 = _dummy_1;
    }
    fallback () external {
        data.push(3);
        data1[1] = 2;
    }
}
