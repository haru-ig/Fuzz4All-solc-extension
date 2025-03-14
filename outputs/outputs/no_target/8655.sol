pragma solidity ^0.8.0;
contract OldABIv2
{
}
contract NewABIv2
{
    function f() public returns (uint256)
    {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract OldABIv2x
{
}
contract NewABIv2x
{
    function f() public returns (uint256)
        pure
    {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract OldABIv2y
{
    address public owner;
    constructor()
    {
        owner = msg.sender;
    }
}
contract NewABIv2y
{
    address public owner;
    address public addr;
    constructor() public
    {
        owner = msg.sender;
        addr = msg.sender;
    }
}
