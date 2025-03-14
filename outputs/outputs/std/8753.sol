pragma solidity ^0.8.0;
contract Mutated3 {
    uint public foo;

    constructor() {
        foo = 17;
    }

    function f() external {
        foo = foo + 10;
    }
}

pragma solidity ^0.8.0;
contract Mutated2 {
    uint public foo;

    constructor() {
        foo = 86;
    }

    function f() external pure {
        foo = foo + 7;
    }
}

pragma solidity ^0.8.0;
contract Mutated1 {
    function f() public pure {
        deleteFoo();
    }

    function deleteFoo() internal { foo = 0; }
}
