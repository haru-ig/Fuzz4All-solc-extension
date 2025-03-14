pragma solidity ^0.8.0;
contract MutationEquivalence82
{
}

pragma solidity ^0.8.0;
contract MutationEquivalence83 is Equivalence81, Equivalence82
{
    function set(uint a, uint[] memory b) public {
        a = a;
        b = b;
    }

    uint a;
    uint[] memory b;
    function get() public view returns (uint){
        return a;
    }
}
