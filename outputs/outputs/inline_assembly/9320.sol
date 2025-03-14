pragma solidity ^0.8.0;
contract A {

    uint private _x;
    uint getX() public pure returns (uint) {
        return _x;
    }
    function setX() public
        {
            _x -= _x;
            uint256 y = getX();
            x /= 2;
            y = 1;
        }
}
