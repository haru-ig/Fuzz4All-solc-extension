pragma solidity ^0.8.0;
interface IInterface_v3 {
    function qux256(uint40 input) public external  check_overflow();
    function bar256(uint40 input) public external  check_overflow();
    function baz256(uint40 input) public external  check_overflow();
}
