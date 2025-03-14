pragma solidity ^0.8.0;
contract SemanticallyEquivalentOldABIv2
{
    function f() public pure returns(uint256)
    {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentOldABIv2
{
    function f() public pure returns(uint256)
    {
        return 0;
    }
}
contract NewABIv2
{
    function f() public pure returns(uint256)
    {
        return 0;
    }
}
contract SemanticallyEquivalentNewABIv2
{
    function f() public pure returns(uint256)
    {
       return 0;
    }
}
