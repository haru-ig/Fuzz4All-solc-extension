pragma solidity ^0.8.0;
contract ModifierCall
{
    modifier isCalled
    {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        _;
    }
    constructor()
    {
    }
}

pragma solidity ^0.8.0;
contract RevertProgram
{
    modifier isCalled
    {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success);
        _;
    }
    constructor()
    {}
    function createProgram() public view isCalled returns (address)
    {
        return address(new RevertTest());
    }
    function createModifier() public view isCalled returns (address)
    {
        return address(new ModifierCall());
    }
}
