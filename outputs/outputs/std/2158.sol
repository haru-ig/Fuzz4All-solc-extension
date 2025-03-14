pragma solidity ^0.8.0;
contract Mutated_5_1 {
    function call() public view returns (uint){
        (uint a, uint b) = (7, 13);
        return max1(a,b);
    }
}
