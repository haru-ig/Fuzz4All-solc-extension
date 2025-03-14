pragma solidity ^0.8.0;
contract CallerFallbackV3 {
    function fallback() virtual external payable {
    }
    function fallback() public virtual payable {}
}
contract CallerFallbackV4 {
    fallback() external payable {}
    fallback() public virtual payable {}
}
