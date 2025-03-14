pragma solidity ^0.8.0;
contract Mutated {
    uint foo;
}

pragma solidity ^0.6.0;
contract NonMutated {
    uint bar;
}

contract EqualFunctionBytes {
    uint bar;
}

pragma solidity ^0.8.0;
contract NonEquivalentMethod {
    uint bar;
    function foo() public pure {
    }
}

pragma solidity ^0.6.0;
contract NonEquivalentPureMethod {
    uint bar;
    pure function foo() public pure {
    }
}

pragma solidity ^0.8.0;
contract NoChanges {
    uint baz;
}
