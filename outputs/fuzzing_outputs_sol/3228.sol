pragma solidity ^0.8.0;
contract LowLevelFallback2 {
    uint16 _data;

    function lowLevelFallback() public pure {
        _data = 2500;
    }

    function lowLevelFallback(uint128 amount) public pure {
        _data = uint16(amount);
    }

    function lowLevelFallback(uint256 amount) public pure {
        _data = uint16(amount);
    }
}
