pragma solidity ^0.8.0;
contract Test70Mutated is ITest70 {
    constructor() public {
        int32 foo = foo();
        foo--;
    }
    function foo() public pure virtual returns(int32) {
        return 1;
    }
}
