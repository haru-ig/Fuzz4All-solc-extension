pragma solidity ^0.8.0;
contract F1 {
    function add_internal(uint a, uint b) public view returns (uint){
        return (add_internal(a,b));
    }
    function add_internal(uint a, uint b) public view returns (uint){
        assembly {
            return add(a, b)
        }
    }
    function add(uint a, uint b) public view returns (uint){
        a += b;
        return a;
    }
}
