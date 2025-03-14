pragma solidity ^0.8.0;
contract Caller {
    uint constant storedData = 0xabcde;
    function fallback() external {
        storedData += 0x11111111;
    }
    function getValue() public {
        require(storedData >= 99, 'Need more gas');
        storedData += 0x22222222;
    }
}
