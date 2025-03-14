pragma solidity ^0.8.0;
contract Test54Mutant {
   uint x;
   uint[] public xArray;
   uint[] private xArrayPrivate;
   function f() public{
      x = x + 1;
      xArray.push(0);
      xArrayPrivate = xArray;
      xArray[0] = 1;
      xArray.length = 2;
      xArray.push(2);

      delete private xArray;
      private xArrayPrivate[0] = 3;
   }
}
pragma solidity ^0.8.0;
contract Test55Mutant {
   uint[] public xArray;
   uint[] private xArrayPrivate;
   function f(uint[5] memory) public{
      delete private xArray;
      xArrayPrivate[0] = 0;

      xArray =  xArray + [0];
      xArray[xArray.length++]=0x825442;
      private xArrayPrivate = xArray;
   }
}
pragma solidity ^0.8.0;
contract Test56Mutant {
   uint x;
   uint[] public xArray;
   uint[] private xArrayPrivate;
   function f() public{
      x = 0x12a1;
      delete xArray;
      delete xArray + [0];
      delete xArrayPrivate[0];
      xArray = xArray + [0];
      private xArrayPrivate = xArray;
      xArray[xArray.length++]=0x825442;
      xArray =  xArray + [0];
      xArray[xArray.length++]=0x825442;
      xArrayPrivate[xArrayPrivate.length++]=0x825442;
      xArray[xArray.length++]=0x825442;
      xArray =  xArray + [0];
      xArray[xArray.length++]=0x825442;
      xArray[xArray.length++]=0x825442;
      xArray[xArray.length++]=0x825442;
      xArray[xArray.length++]=0x825442;
      xArray[xArray.length++]=0x825442;
      delete xArray >> 32;
      xArray =  x
