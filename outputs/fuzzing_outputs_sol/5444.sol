pragma solidity ^0.8.0;
contract successmutablefallback2
{
    receive() external payable {}
}
contract callmutatedfallback2 {
    constructor() public {}
    receive() external payable {}
    function test() public pure returns (uint256) { return 2; }
}
contract constructorcall2 {
    constructor() public {}
}
