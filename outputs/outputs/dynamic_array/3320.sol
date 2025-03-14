pragma solidity ^0.8.0;

contract A {
   I1 public i;
   uint256 pubKey = 0;

   constructor(I1 _i) {
      i = _i;
   }

   contract B {
      constructor() {
      i.use(pubKey, fallbackSelector);
      }
   }


   function fallbackSelector() public pure {
   }
}
