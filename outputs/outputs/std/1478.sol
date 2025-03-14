pragma solidity ^0.8.0;
contract Mutate {
    function max(uint64 a,uint64 b) public pure returns (uint64) {
        return a > b? a : b;
    }
    function min(uint64 a,uint64 b) public pure returns (uint64) {
        return a < b? a : b;
    }
    function set(uint64[] memory, uint64 element) public {
    }
    function get(uint64[] memory, uint64 index) public view returns (uint64) {
    }
    function sort(uint64[] memory) public {
    }
}
