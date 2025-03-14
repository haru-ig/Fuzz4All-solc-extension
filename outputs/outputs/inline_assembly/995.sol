pragma solidity ^0.8.0;
contract Counter3 {
    event Incremented(uint _i);
    uint private _i;
    constructor () {
        _i = 0;
    }
    function value() public view returns (uint) {
        return _i;
    }
    function inc() public {
        _i += 1;
        emit Incremented(_i);
    }
}
