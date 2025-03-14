pragma solidity ^0.8.0;
interface I {
   function f(uint) returns (uint);
   function f(uint,uint) returns (uint);
}
interface I {
   function f(uint[]) returns (uint);
}
interface I {
   function f(bytes[]) returns (uint);
}
