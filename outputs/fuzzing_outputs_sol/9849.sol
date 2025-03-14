pragma solidity ^0.8.0;
contract Mutating
{

}
contract ModifiedMutating: Mutating
{
    function modifiedMutating() public{
    }
}
contract NotMutatingMutating: Mutating
{
    function notMutatingMutating() public{
    }
}
