pragma solidity ^0.8.0;
contract MutateCaller{
    uint x;
    constructor() public{
        x = 1;
    }

    function mutate() public returns (uint) {
        x = 2;
        return x;
    }
}

pragma solidity ^0.8.0;
contract MutationsCaller{
    function mutate() public {}
}
