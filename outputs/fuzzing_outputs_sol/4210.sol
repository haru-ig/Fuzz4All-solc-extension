pragma solidity ^0.8.0;
contract ContractCallerMutator{
    enum State{One,Two,Three}
    uint8 x = 0;
    function Mutator(State memory c) public{
        x = c;
    }
    function Caller(State memory c) public{
        x = c;
    }
}


pragma solidity ^0.8.0;
contract ContractCallerMutatorMutator{
    enum State{One,Two,Three}
    uint8 x = 0;
    constructor(State memory _c) public {
        x = _c;
    }
    function Mutator(Address _a, State memory s) internal{
        x = s;
    }
}
