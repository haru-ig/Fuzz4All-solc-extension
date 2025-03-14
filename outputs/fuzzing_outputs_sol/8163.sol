pragma solidity ^0.8.0;
contract Fallback{
  function fallback(){
    SemanticSimilar1 s1=new SemanticSimilar1();
    SemanticSimilar2 s2=new SemanticSimilar2();
    SemanticSimilar3 s3=new SemanticSimilar3();
    v=s1.v + s2.v + s3.v;
  }
}
pragma solidity ^0.8.0;
contract TestCaller{
  address public contractAddress;

  function TestCaller(){
    contractAddress=address(this);
  }
  function testCaller(uint val) payable{
    contractAddress.call{value: val}("");
  }
}
pragma solidity ^0.8.0;
library SafeMath {

  function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
      uint256 c = a + b;
      if (c < a) return (false, 0);
      return (true, c);
    }
  }


  function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
      if (b > a) return (false, 0);
      return (true, a - b);
    }
  }


  function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {



      if (a == 0) return (true, 0);

      uint256 c = a * b;
      if (c / a!= b) return (false, 0);
      return (true, c);
    }
  }


  function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (b == 0) return (false, 0);
    return (true, a / b);
  }


  function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (b == 0) return (false, 0);
    return (true, a % b);
  }

  /**
  * @dev Returns the addition of two unsigned
