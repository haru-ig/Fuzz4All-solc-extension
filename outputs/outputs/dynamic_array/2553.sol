pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations6
{
    constructor() {
        if(uint(a) < 0x20)
        {
            a.push(100);
        }
    }
}

pragma solidity ^0.8.0;
class Mutator
{
    uint a;
    function Mutator(uint _a)
    {
        a = _a;
    }

    function doesNotExist() public view returns (bool) {
        return a.length!= 0;
    }
}
