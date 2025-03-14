pragma solidity ^0.8.0;
contract B {
  fallback() external{
    uint[] memory a=new uint[](10);
    uint i=0;
    uint[10] memory tmp=a;
    while (i<10) a[i++]=uint(i);
    uint[] memory tmp2;
    require(tmp[5]==uint(5));
  }
}
