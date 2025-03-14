pragma solidity ^0.8.0;
contract FallbackCaller {
    function fallback() public {
        try new Fallback().fallback(uint(msg.data)) {
            fallback_();
        } catch {
            fallback_();
        }
    }
    function fallback_() public pure {

    }
}
