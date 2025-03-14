pragma solidity ^0.8.0;
contract Test090113 {
    function f() public pure returns (uint256) {
        return 3 + 7;
    }
    function Test080424() public pure returns (uint256) {
        return f( 1, 2, 3) + 4;
    }
}
