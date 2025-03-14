pragma solidity ^0.8.0;
contract NotModified {}
contract MyContract {
    function MyContract() public {

    }
}

pragma solidity ^0.8.0;
contract A {}
contract A1 is A {
}
contract B { }
contract C {
    function C() public {
    }
}
contract A is B, C {}
contract A2 is A {
    function A2() public {
    }
}
contract B is C {
    function B() public {
    }
}
contract A is B {}
contract B is I {
}
contract C is A {}


pragma solidity ^0.8.0;
contract NotModified {}
contract A {}
