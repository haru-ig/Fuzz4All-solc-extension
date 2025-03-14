pragma solidity ^0.8.0;
contract Mutated_2 {
    function min(uint x, uint y) public pure returns (uint a) {
        return a = uint(x < y? x : y);
    }
    function min(uint x, uint y, uint z) public pure returns (uint a) {
        uint min = uint(x < y? x : y);
        return a = min = uint(min < z? min : z);
    }
    function min(uint x, uint y, uint z, uint w) public pure returns (uint a) {
        uint min = uint(x < y? x : y);
        uint minm = uint(min == 1? 2 : x < y? y : z);
        a = min = min == 1? 2 : uint(min < minm? min : minm);
        return a = min = uint(min == 1? 3 : x < y? z : w);
    }
}
contract Mutated_3_12_3 {
   function min_3(uint x, uint y, uint z) public pure returns (uint a) {
        require(x >= y, "First input must be >= second input");
        require(x >= z, "second input must be >= third input");
        return a = uint(x < y? x : y);
    }
}
