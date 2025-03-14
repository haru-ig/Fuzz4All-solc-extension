pragma solidity ^0.8.0;
contract F1 is F1 {
    function add(uint a, uint b) public pure returns (uint){
        return (a + b);
    }
    function update() public pure returns (uint){
        return add_internal(97, 118);
    }
}
