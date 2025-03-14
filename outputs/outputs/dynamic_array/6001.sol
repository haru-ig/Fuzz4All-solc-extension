pragma solidity ^0.8.0;
contract Test30015 {
    constructor() public {}
    fallback() public payable { }
    uint[] public data;
}

interface ArrayInterface {
    function push(uint8 x) external;
}
