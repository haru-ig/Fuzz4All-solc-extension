pragma solidity ^0.8.0;
contract FallbackCaller {
    function Call(uint128 a) external {
        require(a % 15!= 50, "a is not a mut");
        emit CallLog(a);
    }
    event CallLog(uint128 a);
}

```

# Appendix
Here are some additional material we've included.
