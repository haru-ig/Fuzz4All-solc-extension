pragma solidity ^0.8.0;
interface IArray {
   function set(uint x, uint index_2d) external;
   function get(uint index_2d) external view returns (uint a);
   function mul(uint x, uint y) external;
   function div(uint x, uint y) external;
   function add(uint x, uint y) external view returns (uint a);
