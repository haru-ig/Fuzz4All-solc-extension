pragma solidity ^0.8.0;
contract SemanticMutation6
{
    function mutated_constructor() public
    {
        this.test /= 10;
        this.test *= 0;
    }
}
