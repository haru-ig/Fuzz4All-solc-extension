pragma solidity ^0.8.0;
contract Mut8 {
    B constant A = B.a;
    function setB(B value) public pure {
        A = value;
    }
}
