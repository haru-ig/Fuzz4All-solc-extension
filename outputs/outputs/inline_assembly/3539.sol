pragma solidity ^0.8.0;
contract ChangeSemanticsUsingInlineAssemblyWithSemantics {
    address internal constant ZERO = address(0);
    address internal constant ONE = address(1);
    address internal constant TWO = address(2);
    function change1() external {
        assembly {
            a := 1
            a := 1
            a := 2
            a := 2
            a := 1
            a := 2
            a := 1
            a := 0
            a := 1
            a := 0
            a := 1
        }
    }
    function change2() external {
        assembly {
            a := 2
            a := 1
            a := 2
            a := 2
            a := 1
            a := 1
            a := 0
            a := 1
            a := 1
            a := 1
            a := 1
            a := 0
        }
    }
    function change3() external {
        assembly {
            a := 1
            a := 0
            a := 1
            a := 1
            a := 1
            a := 1
            a := 1
            a := 0
            a := 1
            a := 1
            a := 1
        }
    }
    function change4() external {
        assembly {
            a := 0
            a := 1
            a := 0
            a := 1
            a := 1
            a := 1
            a := 1
            a := 0
            a := 1
            a := 1
            a := 1
            a := 1
        }
    }
    function change5() public {
        a := 1;
        a := 1;
        a := 1;
        a := 1;
