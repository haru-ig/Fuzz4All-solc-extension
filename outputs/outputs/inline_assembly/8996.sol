pragma solidity ^0.8.0;
struct X {
    uint256 x;
}
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(6);
    }
    function sub() public pure returns(X memory)
    {
        return X(5);
    }
}
contract EquivalentSolidity7 is EquivalentSolidity5, EquivalentSolidity6
{

}
