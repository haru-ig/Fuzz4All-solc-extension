pragma solidity ^0.8.0;
interface Interface2 is Interface{}
contract A {
    interface B {}
    function f(interface2) return (Interface2){
    }
    function f() internal returns (Interface2){
    }
    function g() override internal returns (Interface){
    }
}
