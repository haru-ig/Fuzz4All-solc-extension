pragma solidity ^0.8.0;
contract CallerExample20 {


    modifier onlyFallback() {
        require(
            hasValidFallback(), "Only allowed to call fallback function"
        );
        _;
    }
    function hasValidFallback() internal view returns (bool) {
        return true;
    }
    function callBack() public payable { }
    function fallback() public payable { }
}
