pragma solidity ^0.8.0;
contract Mutated {

    mapping (uint => mapping(uint => uint)) balances;

    function balance(uint x, uint y) public view returns(uint) {
        return balances[x][y];
    }

    function setBalance(uint x, uint y, uint w) public {
        balances[x][y] = w;
    }
}
