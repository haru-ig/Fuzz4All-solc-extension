pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract Counter {
    uint private _i;
    event Incremented(uint _i);
    constructor() {
        _i = 0;
    }
    function increment() public nonReentrant {
        _i += 1;
        emit Incremented(_i);
    }

    function nonReentrant() internal nonReentrant {}
}
