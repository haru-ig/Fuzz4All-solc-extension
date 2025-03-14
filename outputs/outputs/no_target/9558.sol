pragma solidity ^0.8.0;

contract Interface6 { }
interface Interface61 { }

contract Interface8 {

   function immutable() public view returns (bool);
   function immutable2(bool x) view public pure returns (bool);

   function non_immutable() public view returns (uint160[3] a);
   function non_immutable2(uint160 x) view public returns (uint160 y, address z);
   function non_immutable3(uint8[] x) view public returns (uint8[3] y, address z);
}
interface Interface9 {
   function read(bytes1 b) external view returns (bytes2 i);
}
interface Interface10 {
   function read_read(bytes1 b, bytes2 i) external view returns (bytes1 j, bytes2 k);
}
interface Interface11 {
   function read_read_read(bytes1 b, bytes2 i, bytes1 j) external view returns (bytes3 l, bytes1 m);
   function read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l) external view returns (bytes4 m);
}
interface Interface12 {
   function read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l, bytes1 m) external view returns (bytes5 n);
}
interface Interface13 {
   function read_read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l, bytes1 m, bytes4 n) external view returns (bytes6 o);
}
contract Interface14 {
   function read_read_read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l, bytes1 m, bytes4 n, bytes6 o) external view returns (bytes7 p);
}
contract Interface15 {
   function read_read_read_read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l, bytes1 m, bytes4 n, bytes6 o, bytes5 p) external view returns (bytes8 q);
}
contract Interface16 {
   function read_read_read_read_read_read_read_read(bytes1 b, bytes2 i, bytes1 j, bytes3 l, bytes1 m, bytes4 n, bytes6 o, bytes5 p, bytes7 q) external view returns (bytes9 r);
}


contract Interface17_v3 {
   function
