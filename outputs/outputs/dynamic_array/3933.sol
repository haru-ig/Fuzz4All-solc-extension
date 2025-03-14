pragma solidity ^0.8.0;
contract B {
   constructor() public {}
   uint[12] public d;
}

contract C {
   function test() public returns(uint x) {
      uint[12] o;
      uint[12] p;

      p = o;
      p[1] = 1;

      this.d = o;
      this.d[1] = 1;

      assert(p[1] == 1);
      assert(this.d[1] == 1);
   }
}
