pragma solidity ^0.8.0;
contract mutation3 {
    function f() public pure {
    }
}

pragma solidity ^0.80000000.0;
contract mutation4 {
    function f() public pure {}
    uint256 constant ZERO = 0;
}
contract mutation5 {
    function f() public pure {}
    function f1() private view {
    }
}
