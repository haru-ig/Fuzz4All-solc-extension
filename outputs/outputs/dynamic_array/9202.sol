pragma solidity ^0.8.0;
contract semanticEquivalent_a_Mutable_Mutation {
    mapping (uint => uint) mySlots;
    uint a;





        if (a < 0)
        {
          return (0);
        }



  constructor(uint x)
  {
        a = x;
        mySlots[a] = a;
  }
}
pragma solidity ^0.8.2;
contract noSemanticEquivalent_a_Mutable_Mutation {
    function semanticEquivalentMutation()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result = new uint[](8);
        for (uint i = 0; result.length < 5; i++) {
          result[4] = 0;
        }
        return result;
    }
}
