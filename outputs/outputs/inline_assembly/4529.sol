pragma solidity ^0.8.0;
contract Emulator22 {
    constructor() public {}
    function test() public view returns(uint) { return 10; }
}
contract Emulator6 {
    constructor() public {}
    function test() public pure {
        address gasUsedAddress;
        memoryUsedAddress;
        storageUsedAddress;
        calldataUsedAddress;
    }
}
