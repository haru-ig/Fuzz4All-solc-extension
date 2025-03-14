pragma solidity ^0.8.0;
contract NewSemanticsFallbackCallNonPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    constructor() public {
        value = msg.value;
    }
    function set(uint256 _v) internal { value = _v; }

    fallback() external {
        value += msg.value;
    }
}
