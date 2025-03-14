pragma solidity ^0.8.0;
contract F1 {
    function add(uint a, uint b) public view returns (uint){
        return (a * b);
    }
    function add_internal(uint a, uint b) public view returns (uint){
        return (add(a, b));
    }
    function divide(uint a, uint b) public view returns (uint){
        return (a / b);
    }
}
