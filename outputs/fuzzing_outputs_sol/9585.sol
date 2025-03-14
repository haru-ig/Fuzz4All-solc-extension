pragma solidity ^0.8.0;
contract EtherFallbackMutated {
    fallback(address) public;
    function getFallback() external pure returns (address) {
        return address(address(this));
    }
}
