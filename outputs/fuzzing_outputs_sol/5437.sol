pragma solidity ^0.8.0;
contract successmutablefallback
{
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract callmutatedfallback
{
    constructor() {}
    receive() external payable {}
    function test() external view returns (uint256) { return 2; }
}

contract constructorcall
{
    constructor() public
    {
    }
}
