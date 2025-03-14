pragma solidity ^0.8.0;
contract Mutated {
    uint a=2;
    mapping (address => uint) balances;
    address addr_=100;

    function mutated_() public payable returns(uint) {
        balances[100]=2;
        return a;
    }

    receive() payable {

        }
}
