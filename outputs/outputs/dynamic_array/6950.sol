pragma solidity ^0.8.0;
contract Test4_reorg_1 {
    mapping(uint => uint256) public numInts_1;
    constructor() {
      numInts_1[1] = 1;
    }
}
