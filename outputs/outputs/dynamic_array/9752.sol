pragma solidity ^0.8.0;
contract Mutator {
    struct Data {
        uint foo;
    }
    function fTest(Data memory d) public pure {
        d.foo = 3;
    }
}

pragma solidity ^0.8.0;
contract ConstantInitializer {
    struct Data {
        uint foo;
    }
    uint constant INITIAL_FOO = 3;
    function fTest(Data memory d) public pure {
        d.foo = INITIAL_FOO;
    }
}
