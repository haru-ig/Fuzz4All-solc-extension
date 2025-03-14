pragma solidity ^0.8.0;
contract M11 {
    function emitLog(address _a) public {
        emit Log(_a);
    }
    event Log(uint8 value);
}

pragma solidity ^0.8.0;
contract M11 {
    constructor () public {
        emit Log(address(this));
        emit Log(address(this));
    }
    function emitLog(address _a) public {
        emit Log(_a);
    }
    event Log(address value);
}
