pragma solidity ^0.8.0;
contract simpleMutator{
    function mutate(uint256 a){
        a > -1? a >=0 : a >0;
    }
}
