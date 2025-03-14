pragma solidity ^0.8.0;
contract CallerMod {
    uint immutable value;
    constructor() public {
        value = msg.value;
    }
    function mutate() internal{
        value += msg.value;
    }
}
