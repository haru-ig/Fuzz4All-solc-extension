pragma solidity ^0.8.0;
contract M11 {
    event Log(address value);
    constructor () public {
        emit Log(address(this));
    }
    function emitLog(address _a) public {
        emit Log(_a);
    }
}
