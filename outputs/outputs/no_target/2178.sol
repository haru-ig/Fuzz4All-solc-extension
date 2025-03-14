pragma solidity ^0.8.0;
contract Modifications3_SEM8 is Modifications3_SEM8 {
    function f() public returns (uint256) {
        return uint256(a > 0? int256(a) + 1 : int256(a));
    }
}
