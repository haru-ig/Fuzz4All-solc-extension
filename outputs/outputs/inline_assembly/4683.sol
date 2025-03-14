pragma solidity ^0.8.0;
contract mutator77 {
   int z = 0 - 1;
   constructor(int _x) public {
     z+=_x;}

 int[] xData;
int[] zData;

 uint i;
 uint z;
 uint z1;

   constructor() {
     i=100; z=2*i + 1; z1=1/z; }

 int getX() public view returns(int){ return z;}

 int[] getXData() public view returns(int[]){return xData;}

 int[] getZData() public view returns(int[]){return zData;}

 int getZ1() public view returns(int){ return z1;}

 int mod(int a, int k) public view returns(int){
    return a % k;

 }

 void change(int a, int k, int z, int _x) public{
    xData[a] = _x;
    zData[z] = _x;
    z=2*a + k;
    z1=1/z;
 }



int setX(int a) public {
    xData[a] = 999;
    return z;
 }



}
