pragma solidity ^0.8.0;
contract Array {

    function min(uint a, uint b) internal pure returns (uint) {
        return a == 0? b : (a < b? a : b);
    }


    function max(uint a, uint b) internal pure returns (uint) {
        return a == 0? b : (a < b? b : a);
    }


    function sum(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }


    function set(uint i, uint a) internal {
        assembly {
            mstore(add(array_ptr, i), a)
        }
    }


    function get(uint i) internal view returns (uint){
        assembly{
            let ptr := array_ptr
            return mload(add(ptr, i))
        }
    }


    function length() internal view returns (uint){
        uint ptrLen = uint(0);
        assembly{
            ptr := array_ptr
            ptrLen := sload(add(ptr, 0))
        }
        return ptrLen;
    }


    function sort(uint[] memory) public view returns (uint[] memory){
        uint i;
        uint j;
