pragma solidity ^0.8.0;
contract Simple
{
    constructor()
    {
        contractFallback(msg.sender);
    }
    function contractFallback(address _newAccount) public { }
}

pragma solidity ^0.8.0;
contract Caller
{
    constructor()
    {
        contractCaller(address(new Simple));
    }
    function contractCaller(address _contractToCall) public { }
}
