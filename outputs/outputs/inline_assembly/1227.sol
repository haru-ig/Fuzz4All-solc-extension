pragma solidity ^0.8.0;
contract BetterProgramMutated
{
    bytes32 x;
    bool executed;
    constructor() public {
        x = '100';
    }

    function mutate() public {
        x = '102';
    }
}
