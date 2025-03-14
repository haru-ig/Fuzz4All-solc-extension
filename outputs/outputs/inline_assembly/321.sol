pragma solidity ^0.8.0;
contract F2 {
    function add_internal(uint a, uint b, bytes memory data) public pure returns (uint){
        return add(a, b)+add_internal(a+a, data);
    }
    function add(uint a, uint b) public pure returns (uint){
        return a ^ b;
    }
    function add_internal(uint a, bytes memory data) public pure returns (uint){
        return add(a, 0)+add_internal(a+a, data)+a;
    }
}
