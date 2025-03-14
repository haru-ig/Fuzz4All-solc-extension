pragma solidity ^0.8.0;
contract Test22 {
    address public foo;
    function f(address a) public returns (uint256 r1, uint256 r2) {
        unchecked {
            (r1, r2) = foo;
        }
        return (r1, r2);
    }
}
