pragma solidity ^0.8.0;
contract MutatorCallerMutator{
    function Mutator() external{
        fallback(this.Mutator());
    }
    function Caller() external{
        fallback(this.Mutator());
    }
    function Mutator(uint i) external{
        assert(i>=0);
        _____();
    }
}

contract MutatorCallerMutator2{
    function Mutator() external payable{
        fallback(this.Mutator());
    }
    function Caller() external payable{
        fallback(this.Mutator());
    }
    function Mutator(uint i) external{
        assert(i>=0);
        _____();
    }
}
