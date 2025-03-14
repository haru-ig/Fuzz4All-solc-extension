pragma solidity ^0.8.0;
contract NoChangeMut {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    function Add (uint a, uint b) internal pure returns(uint) {
        return a + b;
    }
}
contract NoChangeMutables {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor() public {}
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {}
    function setMutated() public {
        emit Mutated();
    }
}
