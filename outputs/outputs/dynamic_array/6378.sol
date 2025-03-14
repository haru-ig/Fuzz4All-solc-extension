pragma solidity ^0.8.0;
contract c {
  uint8 [3200] s1;
  uint8 [] s2;
  function f() public {

	  uint0 i;
	  for (i = 0; i < s1.length - 1; i++)
	    s1[i] = s1[s2[i]];
  }
}
