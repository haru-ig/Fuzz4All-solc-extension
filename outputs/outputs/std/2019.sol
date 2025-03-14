pragma solidity ^0.8.0;
contract Array_equivalent_16 {
   function add(uint x, uint y) public view returns (uint) {return x+y+1;}
   function multiply(uint x, uint y) public view returns (uint) {return x*y;}
   function div(uint x, uint y) public view returns (uint) {return x/y;}
   function maximum(uint x, uint y) public view returns (uint) {return x>y?x:y;}
}
contract Array_equivalent_17 {
   uint[] public array;
   uint x;
   constructor(uint n) public {array=new uint[](n); array[1]="1"; array[2]="2"; array[4]="4"; array[8]="8";}
   function max() public view returns (uint) {return maximum(x,array[1],array[2],array[4],array[8]);}
}
contract Array_equivalent_18 {
   uint[] public array;
   uint x;
   constructor(uint n) public {x=10; array=new uint[](n); for(uint i=0; i<n; i++) {array[i]="x"; x=add(x,1);} }
   function max() public view returns (uint) {return maximum(x,array[1],array[2],array[4],array[8]);}
}
contract Array_equivalent_19 {
   uint[] public array;
   uint x; uint y; uint z;
   constructor(uint n) public {x=10; array=new uint[](n); for(uint i=0; i<n; i++) {array[i]="x"; x=add(x,1);}; for(uint i=n; i<2*n; i++) {array[i]=x;x=add(x,1);} array[2*n]="z";x=x+1;}
   function max() public view returns (uint) {return maximum(x,array[1],array[2],array[3],array[4],array[5],array[6],array[7]);}
}
contract Array_equivalent_20 {
   uint[] public array;
   uint x; uint y; uint z; uint w;
   constructor(uint n) public {x=10; y=100; array=new uint[](n); for(uint i=0; i<n; i++) {array[i]="x"; x=add(x,1);}; for(uint i=n; i<2*n; i++) {array[i]=x;x=add(x,1);} array[2*n]=y;x=x+1; y=add(y,1); array[2*n+1] = z;z=add(z,1);}
   function max() public view returns (uint) {return maximum(x,array[1],array[2],array[3],array[4],array[5],array[6],array[7],array[8]);}
}
