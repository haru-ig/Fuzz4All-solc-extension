pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithsemantics {
    address constant ZERO = address(0);
    address constant ONE = address(1);
    address constant TWO = address(2);
    function change3 (address a) public {
        assembly { a := a }
    }
    function change4 (address a) public {
        assembly { a := a }
    }
    function change5 (address a) public {
        assembly { a := a }
    }
    function change7 (address a) public {
        assembly { a := a }
    }
    function change8 (address a) public {
        assembly { a := a }
    }
    function change9 (address a) public {
        assembly { a := a }
        assembly { a := a }
        assembly { a := a }
    }
    function change11 (address a) public {
        assembly { a := a }
        assembly { a := a }
        assembly { a := a }
        assembly { a := a }
    }
}
