pragma solidity ^0.8.0;
contract MutatedBlock5Mutation97 {
    uint private _x;
    uint private _y;
    uint private _a;
    uint private _b;
    uint private _c;
    function test5() public returns (uint) {
        uint temp = block.timestamp;
        _y += uint(keccak256(abi.encodePacked("1234567890"))), uint128(keccak256(abi.encodePacked("0x9876543210"))));
        _x += uint(keccak256(abi.encodePacked("1234567890"))), uint128(keccak256(abi.encodePacked("0x9876543210"))));
        _c = block.number;
        _x += uint(keccak256(abi.encodePacked("1234567890"))), uint128(keccak256(abi.encodePacked("0x9876543210"))));
        _a += uint(keccak256(abi.encodePacked("1234567890"))), uint128(keccak256(abi.encodePacked("0x9876543210")));
        _b += uint(keccak256(abi.encodePacked("1234567890"))), uint128(keccak256(abi.encodePacked("0x9876543210")));
        return _c - _x - _a;
    }
}




pragma solidity ^0.8.0;


/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transaction the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
