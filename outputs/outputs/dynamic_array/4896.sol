pragma solidity ^0.8.0;
contract Test4 {

    function getElement(uint[32] memory x, uint i) public returns (uint) {
        return x.length > i? x[i] : 0;
    }
}
