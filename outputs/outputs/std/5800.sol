pragma solidity ^0.8.0;
contract Mutated9{
    function mutated7(uint[] memory a) public returns (uint) {

        a[3] = 9;
        return a[3];
    }
}
