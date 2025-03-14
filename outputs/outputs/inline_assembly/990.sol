pragma solidity ^0.8.0;
contract Counter_SemantuallyEquivalent {
    uint private _i;
    event Incremented (uint _i);
    constructor() {
        _i = 0;
    }
    function increment() public {
        assembly {
            _i := _i+1
        }
        emit Incremented(_i);
    }
}
