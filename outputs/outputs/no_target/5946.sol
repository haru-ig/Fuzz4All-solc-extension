pragma solidity ^0.8.0;
contract G {
    uint8 private _d;

    function h() public view returns (uint, uint) {
        return (_d, 1u);
    }

    function i() public view returns (uint) {
        return _d;
    }

    function j() public view {
        _d = 8u160;
    }

    constructor() public {}

    function k() public {
        j();
        bytes memory b;
        (b, ) = h();
        (, ) = h();
    }
}
