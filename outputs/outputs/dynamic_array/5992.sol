pragma solidity ^0.8.0;
contract Test30013 {
    uint16[] private data;
    constructor() public {}
    fallback() external payable { }
    function mutate() public {
        data[50] = 3;
        data[0] = 1;
    }
}
