pragma solidity ^0.8.0;
contract Fallback {
    uint x;
    function contractFallback(bytes memory _data) public pure returns (bool) {
        return bool(x);
    }
    constructor() {   x = 0xabcd; }
    function test() public {
        require(contractFallback(abi.encodePacked("\xf5\xf5")));
        revert(abi.encodePacked(""));
    }
}
