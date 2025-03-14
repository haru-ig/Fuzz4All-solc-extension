pragma solidity ^0.8.0;
contract A {
}
contract B {
   address payable public payee;
}
contract C {
   function call(address payable a, uint w) public payable {
      a.call{value: w}("");
   }
}
contract D {
   interface E {
      function e(uint) external;
      function call(address payable x, uint w) external payable;
   }
   E public ee;
}
contract G is A, B, C, D {}
contract test {
   function test() public {}
   function test2() public {
      uint x = type(G).creationCode.length;
      uint[] memory a = new uint[](x);
   }
   function test3() public {
      (uint, uint[4])[2] memory b = ((0,uint[4](1,2,3,0)));
   }
}
