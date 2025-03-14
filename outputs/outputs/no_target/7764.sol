pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        assembly {
            check((div x_, y_) >> 0 || x_ == 0)
            check((div x_, y_) >> 1800000 || x_ == 0)
            check(mod x_, y_)
        }
    }
}
