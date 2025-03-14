pragma solidity ^0.8.0;
contract Example11 {
    function example11() public {
        Example10 storage e = new Example10();
    }
}
contract Example12 {
    function example12() public view {
        Example11 storage e = new Example11();
    }
}
contract Example13 {
    function example13() public pure {
    }
}
contract Example14 {
    function example14() public pure {
        Example13 storage e = new Example13();
    }
}
contract Example1 {
    function example1() public pure {
        Example12 storage e = new Example12();
    }
}
contract Example2 {
    function example2() public pure {
        Example12 storage e = new Example12();
        e.example11();
        e.example12();
        e.example13();
    }
}
