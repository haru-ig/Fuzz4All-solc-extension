pragma solidity ^0.8.0;
contract OldMutated is  Mutated8 {
    function add(uint y) pure public returns(uint){
        require(y>0){
           return x+y;
        }
    }
}
