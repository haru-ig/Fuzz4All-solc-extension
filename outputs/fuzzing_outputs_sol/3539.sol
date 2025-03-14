pragma solidity ^0.8.0;
contract EmptyFallbackMutated {
    address _address = address(new EmptyFallback());
}
