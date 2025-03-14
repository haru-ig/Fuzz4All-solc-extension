pragma solidity ^0.8.0;
interface Array{
    function add(uint256 a, uint256 b)
  external
  pure
  returns(uint256);
  function max(uint256 a, uint256 b)
  external
  pure
  returns(uint256);
  function min(uint256 a, uint256 b)
  external
  pure
  returns(uint256);
  function set(uint256[] memory, uint256 index, uint256 val)
  external
  pure
  returns(uint256[] memory);
  function sum(uint256[] memory)
  external
  pure
  returns(uint256);
  function sort1(uint256[] memory)
  external
  pure
  returns(uint256[] memory);
}
library TestAddress{
  function f1()
    public
    view
    returns(address){
  return address(0);
}
  function f0()
    public
    pure
    returns(address){
  return address(0);
}
  function f2()
    public
    pure
    returns(address){
  return address(0);
}
  function f3()
    public
    view
    returns(address){
  return address(0);
}
  function f4()
    public
    view
    returns(address){
  return address(0);
}
  function f5()
    public
    view
    returns(address){
  return address(0);
}
  function f6()
    public
    pure
    returns(address){
  return address(0);
}
  function f7()
    public
    view
    returns(address){
  return address(0);
}
  function f8()
    public
    pure
    returns(address storage){
  return;
}
  function f9()
    public
    view
    returns(address storage){
  return;
}
  function f10()
    public
    view
    returns(address storage){
  return;
}
  function f11()
    public
    view
    returns(address storage){
  return;
}
  function f12()
    public
    pure
   returns(address memory){
  return;
}
  function f13()
    public
    pure
    returns(address memory){
  return;
}
  function f14()
    public
    pure
    returns(address memory){
  return;
}
  function f15()
    public
    pure
    returns(address memory){
  return;
}
  function f16()
    public
    pure
    returns(address memory storage){
  return;
}
  function f17()
    public
    pure
    returns(address memory storage){
  return;
}
  function f18()
    public
    pure
    returns(address memory storage){
  return;
}
  function f19()
    public
    pure
    returns(address memory storage){
  return;
}
  function f20()
    public
    view
    returns(address storage){
  return;
}
}



pragma solidity ^0.6.12;
contract Math {
    function floor(uint256 a) internal pure returns (
