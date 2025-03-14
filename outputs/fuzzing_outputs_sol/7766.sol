pragma solidity ^0.8.0;
 contract LegacyNonPayableFallback {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    fallback() external payable {}
}
contract NewNonPayableFallback {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    receive() external payable {
        value += msg.value;
    }
}
pragma solidity ^0.8.0;
