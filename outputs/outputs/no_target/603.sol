pragma solidity ^0.8.0;
interface A {
    function a(string _str) external pure;
}
interface B is I {
}
interface I {
    function i() external pure;
}
