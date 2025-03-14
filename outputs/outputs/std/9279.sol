pragma solidity ^0.8.0;
contract ModifiesGenerated
{
    function modifiedFunction()
        public
    {
        new Mutated();
    }
}
