pragma solidity ^0.8.0;
contract Mutator1v2
{
        function c() private pure {}
}




contract Mutator1Multi
{
    function c() private pure {}
    receive () { c(); }
}

contract Mutator1Multi2
{
    function c() private pure {}
}
