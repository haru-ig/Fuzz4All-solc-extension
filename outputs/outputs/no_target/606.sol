pragma solidity ^0.8.0;
interface BInterface is AInterface {
    function y() virtual;
}
contract CInterface {
    event E();

    function g() virtual external pure internal returns (bool);
    function c(uint a) virtual external payable returns (uint b);
    function e(uint a, uint b) virtual external returns (uint);
}
contract DInterface {
    event E();

    function e1() virtual external pure returns (bool);
    function e2() virtual external pure returns (uint32);
}
contract EInterface is CInterface, DInterface {
    event E();

    function e3() virtual external notF();
    function e4() virtual;

    uint r;
}
contract FInterface {
    event E();

    uint e;

    function f1() virtual external returns (uint);
    function f2() virtual external notF;
    function f3(uint a) virtual external returns (uint);
}
contract GInterface {
    event E();

    function g1() virtual external pure returns (uint);
    function g2(uint a) virtual external alwaysFallback;
    function f(uint a) virtual external call (uint);
}
contract HInterface {
    event E();

    function g1() virtual external pure returns (uint);
    function g2(uint a) virtual external returns (uint);
}
contract JInterface is GInterface, HInterface {
    event E();

    function i(uint a) virtual external pure;
    function f() virtual external;
    function g(uint a0, uint a1);
}
