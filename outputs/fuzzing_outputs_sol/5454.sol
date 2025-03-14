pragma solidity ^0.8.0;

contract test6
{
    receive() external payable {}
    fallback() external payable
    {
        return;
    }
}

pragma solidity ^0.8.0;
library successmutablefallback7
{
    fallback() external payable
    {
        return;
    }
}
contract callmutatedfallback7 {

    constructor() public payable {}
    receive() external
    {
        return;
    }
    function test() public pure returns (uint256) { return 2; }
}
contract test7
{
    fallback() external payable {}
}




contract constructortest7
{
    constructor() public payable {}
}
contract errormutatedfallback7
{

    constructor() public payable {}
    fallback() external payable
    {
        return;
    }
    receive() external
    {

        if(msg.value > 0)
        {
            msg.sender.transfer(msg.value);
        }
        else
        {
            assert false;
        }
    }
    function test() public pure returns (uint256
