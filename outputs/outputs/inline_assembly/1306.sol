pragma solidity ^0.8.0;
contract Mutant4b
{
   uint x = 500;
   uint y;
   bool z;
   (int x, int y) = (x, y);
   constructor() public {
       x = 42;
       y = 88;
       z = false;
   }
   receive(uint128 x) public {
       assert((x & 15) == 0);
   }
}
contract Mutant5b
{
   uint x = 500;
   uint y;
   uint z;
   (int x, int y, int z) = (x, y, z);
   constructor() public {
       x = 42;
       y = 88;
       z = 888;
   }
   receive(uint128 x) public {
       assert((x & 15) == 0);
     }
}
contract Mutant6b
{
    constructor(uint8 z) {
        uint b = 42;
        uint h = 7;
        float f = 100;
        bool m = true;

       (b, h, m, uint16 f,   z) = (42, 7, true, 100, z);
       assert(z);
    }
    receive() external payable {}
}
