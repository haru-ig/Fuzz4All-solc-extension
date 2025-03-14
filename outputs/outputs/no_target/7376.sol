pragma solidity ^0.8.0;
contract BugsABICoder5{
  uint32 constant 3=3;
  uint64 constant 1=1;
  function do_uint64(uint64 x) public pure returns(uint64){
    return x;
  }
  function do_bool(bool b) public pure returns(uint64){
    return (uint64)b;
  }
  function foo() public  returns (uint64) {
     return
    foo_func_uint64(do_uint64(do_uint64(3)))
    + 1
    + foo_func_uint64(do_uint64((1+4294967296U)))
  }
  function foo_func_uint64(uint64 x) public  returns(
   uint128) {
     return (x+11111) * (x+1) * (x*x)
  }
}
