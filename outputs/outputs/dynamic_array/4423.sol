pragma solidity ^0.8.0;
contract Mutated {
    bool public constant true = true;

    function test() public {
        address[] memory booleans;
        booleans.push(true);
    }
}
