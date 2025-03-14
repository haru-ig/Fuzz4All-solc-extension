pragma solidity ^0.8.0;
contract Mutate_0006 {
    enum E {}
    struct S {
        enum F {
            a,
            b
        }
    }
    function foo() public pure returns (E memory, S.F memory);
}
