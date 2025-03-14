pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutated {
    uint public x;
    function testMethod() public pure returns(bytes32) {
        x = 0xabcd;
        return x;
    }
    function setX(uint _x) public {
        x = _x;
    }
}

pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutated {
   uint public x;
   address public y = 0x01;
   function testMethod() public pure returns(bytes32) {
      uint memory x1 = 23;
      x = x1;
      return x;
   }
   uint public z = 1234;
   function setX(uint _x) public {
      x = _x;
   }
}
