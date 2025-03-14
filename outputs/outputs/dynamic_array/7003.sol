pragma solidity ^0.8.0;
contract Test6 {
    bytes32 foo;
    constructor() public {
        foo = keccak256("Hello");
    }
}
contract Test7 {
    bytes32 [] foo;
    function foo() private pure {
        foo.push("Bla");
    }
}
contract Test8 {
    bytes32 [] foo;
    bytes32[ ] bar;
    constructor() public {
        for (uint i=0; i<2; i++) {
            bar.push(keccak256(abi.encode('Hello')));
        }
    }
}
contract Test9 {
    bytes32 [] foo;
    bytes32[] bar;
    constructor() public {
        foo.push("Bla");
        bar[0] = keccak256(abi.encode("Bla"));
    }
}
