pragma solidity ^0.8.0;
contract M12 {
    constructor() public {
        emit Log(address(this));
    }
    function emitLog(address _a) public {
        emit Log(address(_a));
    }
    event Log(address value);
}
