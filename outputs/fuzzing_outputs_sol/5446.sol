pragma solidity ^0.8.0;
contract succeedreadonlyfallbackfallback2
{
    receive() external immutable {}
}
contract callreadonlyfallback2 {
    constructor() public {}
    receive() external readonly {}
    function test() public pure returns (uint256) { return 2; }
}
contract constructorcallreadonlyfallback2
{
    constructor() public {}
    receive() external readonly {}
    function test() public pure returns (uint256) { return 2; }
}
