pragma solidity ^0.8.0;
contract Contract13Mutate {
    bool public isFallbackPayable;

    modifier alwaysPayableFallback() {
       _;
       require(isFallbackPayable);
    }

    fallback() public alwaysPayableFallback {
       isFallbackPayable = true;
    }
}
