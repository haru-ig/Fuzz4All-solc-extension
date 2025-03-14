pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface Interface {
    function f(uint x);
}
contract C {
    interface Ia is Interface { }
}
