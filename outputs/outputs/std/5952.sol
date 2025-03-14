pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges16 {
    function f() pure public returns( bool ){
        return 1+598 >= 599;
    }
}
