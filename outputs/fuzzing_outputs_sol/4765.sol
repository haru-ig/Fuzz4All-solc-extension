pragma solidity ^0.8.0;
contract Caller {
    Fallback public fallback;
    constructor() {
        fallback = new Fallback();
    }

    function() external payable {
        fallback.receive();
    }
}
