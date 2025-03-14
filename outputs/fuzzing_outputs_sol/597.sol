pragma solidity ^0.8.0;
library RevertTest0x50
{
    function call() external
    {
        revert("revert");
    }
    function returnErrorData() external pure
    {
        fallback();
        return 2;
    }
    function returnFailure() external pure
    {
        return failure();
    }
    function revert() internal pure
    {
        return data.gas;
    }
    function success() internal pure
    {
        return true;
    }
    bool private data = false;
    fallback() public pure
    {
        data = true;
    }
    function failure() internal pure
    {
        return true;
    }
}

contract RevertTest0x600
{
    constructor()
    {}
    fallback() public payable
    {
    }
}
contract RevertTest0x20
{
    constructor()
    {}
    fallback() public payable {
    }
}
contract RevertTest0x750
{
    constructor()
    {}
    fallback() public pure {
    }
}
