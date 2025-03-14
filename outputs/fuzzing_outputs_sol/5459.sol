pragma solidity ^0.8.0;
contract contract2 {
    constructor() public {}
    receive() public pure payable {}
}
contract fallback2 {
    constructor() public {}
    receive() payable external {}
}
