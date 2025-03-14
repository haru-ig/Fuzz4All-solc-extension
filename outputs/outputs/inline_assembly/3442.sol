pragma solidity ^0.8.0;
contract SemanticChanges {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    function add(uint a, uint b) internal pure returns(uint) {
        return a + b;
    }
}
contract SemanticChangesMutables {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor() public {}
    modifier onlySet(uint a) {
        assert(a!= ZERO);
        _;
    }
    modifier onlySet(uintnewValue) {
        _;
    }
    function set (uint a) public onlySet(a) {}
    function setMutated() public {
        emit Mutated();
    }
}
contract SemanticChangesBothMutables {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor() public {}
    modifier onlySet(uint a) {
        assert(a!= ZERO);
        _;
    }
    modifier onlySet(uintnewValue) {
        _;
    }
    function set (uint a) public onlySet(a) {}
    function setMutated() public {
        emit Mutated();
    }
}
contract SemanticChangesBoth {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor() public {}
    modifier onlySet(uint a) {
        assert(a!= ZERO);
        _;
    }
    modifier onlySet(uintnewValue) {
        _;
    }
    function set (uint a) public onlySet(a) {}
    function setMutated() public {
        emit Mutated();
    }
}
contract SemanticChangesBothMutables2 {
    event Set(uint indexed a);
    event Mutated();
    uint constant ZERO = 1;
    uint constant ONE
