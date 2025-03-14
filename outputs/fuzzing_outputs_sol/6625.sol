pragma solidity ^0.8.0;
contract Mutated {
    constructor() { }
    modifier only_the_constructor(address) {}

    function mutated() public { }
}
contract MutatedFallback {
    constructor() { }
    modifier only_the_constructor(address) {}

    fallback() public { }
}
