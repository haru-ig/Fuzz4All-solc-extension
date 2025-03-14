pragma solidity ^0.8.0;
contract Mutate_001 {
    function foo() public {
        if (!setX(1)) { revert("Failed"); }
    }
}
