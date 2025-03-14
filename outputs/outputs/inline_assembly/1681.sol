pragma solidity ^0.8.0;
contract MutatorS5 {
    constructor() {
        _ = mutate();
    }
    modifier onlyLastChange {
        a = ONE;
        _;
    }
    function mutate() public onlyLastChange {
    }
}
