pragma solidity ^0.8.0;
contract MutatedExamples14 {
    bytes memory x;
    uint x;
    function f(){
        uint z;
        (x, z) = (5, 6);
    }
}
