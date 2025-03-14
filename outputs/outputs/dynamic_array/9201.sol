pragma solidity ^0.8.0;
contract semanticEquivalent_a_Mutable_Mutation {
    uint[] memory arrA;
    function semanticEquivalentMutation()
    public
    returns (uint[] memory)
    {
      uint[] memory result = new uint[](8);
      for (uint i = 0; result.length < 5; i++) {
        result[4] = 0;
      }
      return result;
    }
    function assignAtoMutation() public {
      arrA = semanticEquivalentMutation();
    }
}

pragma solidity ^0.8.0;
contract semanticEquivalent_a_and_b_Mutable_Mutation {
    uint[] memory arrA;
    uint[] memory arrB;
    function semanticEquivalentMutation()
    public
    returns (uint[] memory)
    {
      uint[] memory result = arrA;
      uint[] memory resultb = arrB;
      return result;
    }
    function assignAtoMutation() public {
      arrA = semanticEquivalentMutation();
    }
    function assignBtoMutation() public {
      arrB = semanticEquivalentMutation();
    }
}
