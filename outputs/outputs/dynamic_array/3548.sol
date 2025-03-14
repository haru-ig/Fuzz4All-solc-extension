pragma solidity ^0.8.0;
contract G {
   address[10] a;

   constructor() public {
      a.push(address(this));
   }

   function f() public {
       uint[51][62] memory b2;
       b2[0][0]= 1;
       b2[0][1] = 0;
       m();
   }

    function m() public {
       bytes memory str = "this is a test";
       uint i;
       for ( i=0; i<32; i=i+32)
         emitLog(str[i:i+32]);

       for ( i=0; i<32; i=i+32)
         emitLog(uint8(str[i+31]));

       for ( i=0; i<31; i=i+32)
         emitLog(str[i:i+32]);
    }

   event Log(bytes memory log);

   function emitLog(bytes memory log) public {
      emit Log(log);
   }
}

pragma solidity ^0.8.0;

contract A {

   uint[12] a;

   constructor() public {
      a[0] = 0;
      a[1] = 0;
      a[2] = 0;
      a[3] = 0;
      a[4] = 0;
      a[5] = 0;
      a[6] = 0;
      a[7] = 0;
      a[8] = 0;
      a[9] = 0;
      a[10] = 0;
      a[11] = 0;
   }

   function f() public {
      a[0] = 1;
      a[4] = 0;
      a[7] = 0;
      a[12] = 1;
      a[11] = 1;
      a[10] = 1;
      a[9] = 1;
      a[8] = 1;
      a[11] = 2;
      a[12] = 2;
      a[11] = 3;
   }

}
