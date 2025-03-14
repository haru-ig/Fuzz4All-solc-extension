pragma solidity ^0.8.0;
contract F1 {
    function add(uint a, uint b) public pure returns (uint){
        return (a + b);
    }
    function add_internal(uint a, uint b) public pure returns (uint){
        return (add(a, b));
    }
    function divide(uint a, uint b) public pure returns (uint){
        require(b > 0, "b must be greater than 0");
        return (1e18 / b);
    }
}
