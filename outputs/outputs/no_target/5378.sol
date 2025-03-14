pragma solidity ^0.8.0;
contract Mutated {
    Mutated public parent;
    Basic private child;

    function noChange() public pure { }

    constructor(address p) public {
        child.mutate(p);
    }

    function mutate(address p) public pure { }
}

pragma solidity ^0.8.0;
contract Child {
    All public child;

    function noChange() public pure { }

    constructor(address c) public {
        child.mutate(c);
    }

    function mutate(address c) public pure { }
}
