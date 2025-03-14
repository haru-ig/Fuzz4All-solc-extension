pragma solidity ^0.8.0;
contract F2 {
    function add_internal (uint a, uint b) public view returns (uint){
        return (a+b);
    }
    function add (uint a, uint b) public view returns (uint){
        return (a ^ b);
    }
}
