pragma solidity ^0.8.0;
import "./SemanticYulContract.sol";
contract SemanticYulContract2 {
    uint internal contractCounter;
    function add() internal
    {
        contractCounter += 20;
    }
}

contract SemanticYulContract3 {
  uint internal contractCounter;
  function add() internal
  {
    contractCounter += 10;
  }
  function subtract(uint x) internal pure returns (uint)
  {
    return 4 + uint(x);
  }
  function multiply(uint x) internal pure returns (uint)
  {
    return (x*2);
}
function divide(uint x) internal pure returns (uint)
 {
    return (((x*2)*3)*4);
    }
     function power(uint x) internal pure returns (uint)
     {
     return ((x*5*5*5));
     }
}


pragma solidity ^0.8.0;
import "./SemanticYulContract.sol";
contract SemanticYulContract4 {
    function squareRootComputation(uint num) public pure
    returns (uint)
    {
        uint n = 0;
        if (0 < num) {
            n = num;
