pragma solidity ^0.8.0;
contract SemanticEquivalentK5
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  constructor()
  {
  }
}

pragma solidity ^0.8.0;
contract SemanticEquivalentK6
{
  uint[] a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  uint8 result;
  uint8[] storage arr;
  constructor()
  {
  }
}

contract SemanticEquivalentK1
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  uint8 result;
  uint8[] storage arr;

  constructor ()
  {
  }
  function getResult() internal pure returns (uint8)
  {
    return arr[0];

  }


}
contract SemanticEquivalentK2
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  uint256[] storage arr;
  boolean[uint256][] storage bigboolArray;

  constructor ()
  {
  }
  function getResult() internal pure returns (uint8)
  {
    return arr[0];

  }

}
contract SemanticEquivalentK3
{
    uint8 a;
    uint8 b;
    uint16 c;
    uint8 d;
    uint16 e;
    uint8 memory result;
    uint8 memory[] storage arr;

    constructor ()
    {
    }

    function getResult() internal pure returns (uint8)
    {
        return arr[0];

    }
}
