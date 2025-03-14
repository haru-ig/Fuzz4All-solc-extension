pragma solidity ^0.8.0;
contract F {
  int[] public p = new int[](1);
  function f() public {
    p=new int[](1);
    p[0]=3;
    p[0]+=1;
  }
}
pragma solidity ^0.8.0;
contract F {
  int[] public p = [222300086,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  function f() public {
    p[0]=3;
    p[0]+=1;
  }
}
