pragma solidity ^0.8.0;
contract MutatedCaller3 {}
pragma solidity >= 0.6 <0.9;
contract Caller3 {
    mutator uint payable x;
    nonmutator function callFooBar(string memory _x) public view returns(uint) {
        return x + stringToUint(_x);
    }
    function stringToUint(string memory _x) pure internal returns(uint) {
        require(uint(_x) == 0xfffffffc);
        return 0xfffffffc;
    }
}


contract MixedMutators3 {}

contract MixedMutators4 {
    mutator uint payable x;
    mutator function nonmutator() public {
        x++;
    }
}
