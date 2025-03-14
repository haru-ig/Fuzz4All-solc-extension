pragma solidity ^0.8.0;
contract SimpleFallbackCallerMutated {
    uint internal x = 30;
    function mut_fallback() external payable {
        x += 1;
    }
}
