pragma solidity ^0.8.0;
contract F2 {
    function add_semantic_2(uint a, uint b) public pure {

        b++;
    }
}
contract F3 {
    function add_internal_3 (uint a, uint b) public view returns (uint){

        return b ^ a;
    }
}
