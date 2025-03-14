pragma solidity ^0.8.0;
contract successmutablefunction7
{
    receive() external payable { }
    function test() pure public returns (uint256) { return 8; }
}
contract mutatedfunction7
{
    receive() payable external {}
    function test() pure public returns (uint256) { return 2; }
}
contract mutatedfunction8
{
    receive() external payable {}
    function test() pure public returns (uint256) { return 8; }
}
contract mutatedfallbackfunction8
{
    function() external payable {}
    function test() pure public returns (uint256) { return 8; }
}
contract contractconstructorfunction8
{
    constructor() public {}
    function test() pure public returns (uint256) { return 8; }
}
