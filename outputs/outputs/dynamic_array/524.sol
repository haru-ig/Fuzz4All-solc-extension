pragma solidity ^0.8.0;
contract test10 {
    bytes17[] public myArray13;
    uint myArray14;
    uint public v13;
    uint public v14;
    function test() public
    {
        uint m12 = 245;
        uint n12 = 37;
        myArray13[0] = "234";
        myArray14 = 8;
      while(true)
      {
        m12 = m12 * 2;
        n12 = n12 + 2;
        myArray14 = myArray14 + 1;

        if (myArray14 < 250)
        {
          break
        }
      }
      v13 = n12;
      v14 = m12;
    }
}<jupyter_output>Warning: Array of bytes17 declared in non-existing storage slot. Please fix your code.
