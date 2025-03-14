pragma solidity ^0.8.0;
struct SemanticEquivalent2{
  uint256 a;
  uint256 b;
  uint256 c;
  SemanticSimilar2 v;
}
contract SemanticEquivalent3{
  SemanticSimilar2 v;
}

pragma solidity ^0.8.0;
contract ModifiersV{
  using Require2 as Require;
  function Require1() public{
    uint256 i; require(i ==3 && Require.inRange(2, 3, 9), "");
  }
  function inRange(uint256 min, uint256 max, uint256 value) public view returns (Require2.SafeRange) {
    Require.inRange(min, max, value);
    return Require2.SafeRange{min:min, max:max};
  }
}

pragma solidity ^0.8.0;
contract Caller{


  function () external payable {}


  function() public {}


  function() external {}


  function callEther() external payable {}


  function call() public {}
}
