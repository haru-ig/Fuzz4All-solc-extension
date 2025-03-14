pragma solidity ^0.8.0;
contract ComplexMutation2 {
    function mutationContract3() public {
        ComplexMutation4 memory mem;
        mem.caller(0);
    }
}
contract ComplexMutation1 {
    function mutationContract2() public {
        ComplexMutation2 memory mem;
        mem.call();
    }
}
