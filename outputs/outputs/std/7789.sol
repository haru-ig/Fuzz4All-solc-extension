pragma solidity ^0.8.0;
contract Mutated {
    function e() public {}
    constructor() public Mutated() {}
}

pragma solidity ^0.8.0;
contract Mutated_1 {
    function e() public {}
    struct S {
        function g() public {
            function f() public {
                e();
            }
        }
        constructor() public S(1) {
            constructor();
        }
    }
    constructor() public S();
}

contract Mutated_2 {
    function e() public {
        function f() public { e(); }
    }
    constructor() public e();
}
