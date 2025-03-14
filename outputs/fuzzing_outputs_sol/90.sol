pragma solidity ^0.8.0;
contract HundredsFallbackFunction {
    function getData(uint x) public pure returns (uint x) { return x; }
    fallback() public pure { }
}
