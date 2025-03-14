pragma solidity ^0.8.0;
contract successmutablefallback6
{
    receive() external payable {}
}
contract callmutatedfallback6 {
    constructor() public {}
    receive() external payable {}
    function test() public pure returns (uint256) { return 2; }
}
contract constructorcall6 {
    constructor() public {}
}
