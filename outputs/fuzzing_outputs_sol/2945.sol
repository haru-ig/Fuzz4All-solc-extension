pragma solidity ^0.8.0;
contract Caller {
    function call_fallback() public {
        MutatedCaller c = new MutatedCaller();
        c.mut_fallback();
    }
    fallback() external {
        emit CallerFallback();
    }
    event CallerFallback();
}
