pragma solidity ^0.8.0;
library MutatedSimpleFallbackCallerTest {
    function main() public pure {

        MutatedSimpleFallbackCaller test = MutatedSimpleFallbackCaller(address(0x123));
        test.x = 0;
        test.fallback();
    }
}
