pragma solidity ^0.8.0;
contract Mutators12 {
    uint public a;
    function getA() public view returns (uint Y) {
        uint Z = a;
        if (a <= Z) a = Z;
        Y = a;
    }
}
