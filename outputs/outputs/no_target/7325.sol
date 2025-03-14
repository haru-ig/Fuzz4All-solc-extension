pragma solidity ^0.8.0;
contract NewMutatedAbiCoder {
    function bar(uint a, uint b, uint c) public pure returns (uint) {
        uint x = a + b * c;
        return x;
    }
    function bar() public pure returns (uint) {
        uint x = a + b * c;
        return x;
    }
}
