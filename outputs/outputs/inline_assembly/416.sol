pragma solidity ^0.8.0;
contract M11 {
    constructor () public {
        address a;
        a.Log();
    }
    function emitLog(address _a) public {
        _a.Log();
    }
    event Log(address value);
}
