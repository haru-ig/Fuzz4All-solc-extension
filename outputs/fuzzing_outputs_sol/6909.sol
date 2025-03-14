pragma solidity ^0.8.0;
contract Mutator {
    function mutateContract(Mutator mut) public {
        mut.foo();
    }
}
