pragma solidity ^0.8.0;
interface IA {
    function f() virtual external pure;
}
interface IB {
    function f() virtual external pure;
    function g() virtual external pure;
    function h() virtual external pure;
}
