pragma solidity ^0.8.0;
contract Mutate_array {
    uint public number;
    function setarray(uint memory new_number)external{
        number = new_number;
    }
}
contract Mutated2_array {
    uint public number;
    function setarray2(uint memory new_number)public{
        number = new_number;
    }
}
