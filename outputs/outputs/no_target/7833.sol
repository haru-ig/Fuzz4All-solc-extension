pragma solidity ^0.8.0;
interface IInterface {
   function _check() internal view returns(bool) ;
}
interface IInterface2 is IInterface {
  function _check() internal view returns(bool) ;
}
interface IInterface3 is IInterface, IInterface2 {
   function _check() internal view returns(bool) ;
}
interface IInterface4 is IInterface, IInterface3 {
   function _check() internal view returns(bool) ;
}
interface IInterface5 is IInterface4 {
   function _check() internal view returns(bool) ;
}
