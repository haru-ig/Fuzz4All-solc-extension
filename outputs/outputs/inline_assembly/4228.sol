pragma solidity ^0.8.0;
contract Mutators13Mutated {
    uint public a;


    function mutate1 (uint Y) public {
        a += Y;
    }
}

contract Mutators16Mutated {
    address payable contractPayableAddress;
    uint private previousNumber;
    bool constant public stateInit1 = true;

    mapping(uint => uint[]) public nextNumbers;


    modifier canMutate1 (uint Y) {
       require(msg.sender == contractPayableAddress);
       require(stateInit
