pragma solidity ^0.8.0;
contract m04 {
    function f(uint a) public pure {
        return a % m03.N;
    }
}
interface m01 {
    function f(uint a) public pure;
}
