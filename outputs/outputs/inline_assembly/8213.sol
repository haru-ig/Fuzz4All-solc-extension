pragma solidity ^0.8.0;
contract Mutated4 {
    string public d;
    function increase() public{
        bytes32 x = "Some input";
        assembly {
            print(add(x,32))
        }
        d = x;
    }
}
