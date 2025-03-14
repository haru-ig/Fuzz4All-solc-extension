pragma solidity ^0.8.0;
contract SimpleFallback {
    fallback (uint x) external payable { require(x < 40000); }
}
