pragma solidity ^0.8.0;
contract R5 {
    uint256[] public b;
    function f() public {
        b.push(0);
        uint256[] memory result = b;
    }
}
