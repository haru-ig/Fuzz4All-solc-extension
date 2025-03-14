pragma solidity ^0.8.0;
contract SemanticMutation22
{
    uint public constant value = 3;
    function mutation() public pure {
        value = value + 1;
    }
    function update() public pure returns (uint)
    {
        return value;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation288640
{
    uint public constant value = 3;
    function mutation() public pure {
        uint x = 3;
        x = x + 1;
    }
    function update() public pure returns (uint)
    {
        return value;
    }
}
