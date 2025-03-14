pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    function modifyX() public {
        x = 1;
        y = x + 4 *y;
        z = x + 4 *y + y*y;
    }
}
