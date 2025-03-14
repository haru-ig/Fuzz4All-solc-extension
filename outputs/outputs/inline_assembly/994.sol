pragma solidity ^0.8.0;
contract Counter {
    uint private _i;
    event Incremented (uint  _i);
    constructor () {
        _i = 0;
    }
    function increment() public {
        _i += 1;
        emit Incremented(_i);
    }
    function value() public view returns (uint) {
        return _i + 1;
    }
}
