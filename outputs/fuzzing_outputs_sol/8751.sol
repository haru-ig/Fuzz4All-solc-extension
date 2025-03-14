pragma solidity ^0.8.0;
contract mutatedCaller6 {
    uint x;
    constructor() {
        (x ) external;
    }
    receive() external payable { }
    function fallback() external pure { }
}
