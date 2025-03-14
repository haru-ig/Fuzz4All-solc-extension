pragma solidity ^0.8.0;
contract Caller {
    FallbackMutator fallback;

    constructor() {
        fallback = new FallbackMutator();
    }
    function Mut(uint256 a) external {
        fallback.Mut(a);
    }
    event MutLog(uint256 a);
}
