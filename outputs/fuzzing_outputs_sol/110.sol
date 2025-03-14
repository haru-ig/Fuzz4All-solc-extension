pragma solidity ^0.8.0;
contract MyMutationsCallAndFallbackFunctionThreePlusFallbackFunctionMutation {
    uint256 public immutable mutable;
    constructor(uint a, uint b) {
        mutable = a + b;
    }
    function getData(uint k, uint256 _x) public view returns (uint256 x) {
        require(msg.data.length <= 32, "Data too long");
        x = _x + 2;
    }
    function getAndCheck(uint x) public view returns (uint256 z) {
        require(z == 4, "Invalid value");
        z = x + 1;
    }
}
