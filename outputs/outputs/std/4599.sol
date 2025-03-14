pragma solidity ^0.8.0;
contract SampleStorage {
    uint256[] public data;
    constructor() public {
        data.push(99);
    }
}
