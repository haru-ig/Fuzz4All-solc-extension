pragma solidity ^0.8.0;
library Counter {
    uint256 private _i;
    event Incremented (uint256 _i);
    function increment() public {
        _i += 1;
        emit Incremented(_i);
    }
    function value() public view returns (uint256) {
        return _i + 1;
    }
}
