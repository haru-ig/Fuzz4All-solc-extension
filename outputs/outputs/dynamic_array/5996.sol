pragma solidity ^0.8.0;
contract Test30014v2 {
    uint8[] private data;
    constructor() public {
        data.push(44);
    }
    fallback() external payable { }
    uint8[] public new;
}
