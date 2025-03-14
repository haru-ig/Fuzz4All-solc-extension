pragma solidity ^0.8.0;
contract successmutablefallback7
{
    receive() external payable {}
}
contract callmutatedfallback7 {
    constructor() public {}
    receive() payable external {}
    function test() public pure returns (uint256) { return 2; }
}
contract constructorcall7 {
    constructor() public {}
}
