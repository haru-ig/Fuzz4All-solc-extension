pragma solidity ^0.8.0;
contract MutatorCallerMutatorMutator{
    function Mutator() external payable{}
    function Caller() external payable{}
}

pragma solidity ^0.8.0;
contract MutatorCallerMutatorFallback{
    uint immutable value = 0xf00dded;

    function Mutator() external{
    }
    function Caller() external payable{
        mutator.Mutator();
    }

    receive() external payable {

    }
}

pragma solidity ^0.8.0;
contract MutatorCallerMutatorMutator{
    uint immutable value = 0xf00dded;

    function Mutator() external{
    }
    function Caller() external payable{
        mutator.Mutator();
        mutator.Mutator();
    }

    receive() external payable {

    }
}
