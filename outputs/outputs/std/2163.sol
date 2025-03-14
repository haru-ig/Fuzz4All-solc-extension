pragma solidity ^0.8.0;
contract Mutated_5_3 {
    function min(uint x, uint y) public pure returns (uint){
        x = x <= y? x : y;
        return x;
    }
    function min2(uint x, uint y) public pure returns (uint) {
        uint z = x;
        z = x <= y? x : y;
        x = x <= 1? y : x;
        return x;
    }
}
