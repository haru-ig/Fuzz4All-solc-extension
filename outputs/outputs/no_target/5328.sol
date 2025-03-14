pragma solidity ^0.8.0;
contract MutatedExamples12 {
    function mutated(uint256 x) public returns(uint y){}
}

pragma solidity ^0.8.0;
contract MutatedExamples13 {
    constructor() payable public returns(uint y) {
        _ = mutated(42);
    }
    function mutated(uint x) public returns(uint y) {
        return x;
    }
}
