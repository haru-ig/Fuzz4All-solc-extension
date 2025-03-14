pragma solidity ^0.8.0;
contract SimpleFallbackCaller {

    SimpleFallbackCallerV2 public v2Contract;

    function Caller() public {
        v2Contract = new SimpleFallbackCallerV2();
    }
}
