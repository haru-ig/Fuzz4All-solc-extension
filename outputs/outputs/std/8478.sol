pragma solidity ^0.8.0;
contract SmokeExample
{
    uint public value = 37;
    function smokes() public pure returns(uint)
    {
        return value;
    }
}

pragma solidity ^0.8.0;
 contract MutateExample
{
uint minter_balance = 210;
    uint public value;
    function mutator() public
    {
        value = value + 1;
    }
}
pragma solidity ^0.8.0;
contract SmokeExample
{
uint public value;
    function mutator() public
    {
        value = value + 1;
    }
}
