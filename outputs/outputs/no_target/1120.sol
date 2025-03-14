pragma solidity ^0.8.0;
contract SemanticMutation11
{
}

pragma solidity ^0.8.0;
contract SemanticMutation12
{
    function mutate_uint256_max_uint256_max() public pure returns (uint256)
    {
        return (uint256)(-1);
    }
    function mutate_uint256_max_uint256_min() public pure returns (uint256)
    {
        return (uint256)(~uint256(0));
    }
    function mutate_uint160_max_uint160_max() public pure returns (uint160)
    {
        return (uint160)(-1);
    }
    function mutate_uint160_max_uint160_min() public pure returns (uint160)
    {
        return (uint160)(~uint160(0));
    }
}
