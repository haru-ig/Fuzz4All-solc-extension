pragma solidity ^0.8.0;
contract ArrayMutator_1 {
   uint public count = 3;
   function changearray() public {
      uint [] memory s1;
      s1[0] = 0;
      s1[1] = 1;
      s1[2] = 2;
      uint x = Math.sub(((s1[1] + 2) * 3) % (2**32)), s1[2]);
      count = Array.set(x, 0);
   }
   function changearray2() public {
      uint [] memory s1;
      s1[0] = 0;
      s1[1] = 1;
      s1[2] = 2;
      uint xold = Array.get(1);
      xold = Array.set(xold, 0);
      uint xnew = Array.get(1);
      xnew = Array.set(xnew, 0);
      uint y = Array.sub(s1[1], 3);


      uint x = xnew;
      uint z = Array.sub(x, y);
      Array.write("z", z, x);
      count = count * (s1[0] + 2);

   }
}
