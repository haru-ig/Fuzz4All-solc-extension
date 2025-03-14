pragma solidity ^0.8.0;
import "../contracts/AbstractCallWithFallback.sol";
contract MutatedCallOverridingFallbacks {
    address private deployer;
    address[] private addresses;
    event CalledAddresses(address[] addresses);
    function MutatedCallOverridingFallbacks() {
        deployer = msg.sender;
        addresses.push(address(this));
    }
    constructor(address[] memory newAddresses) {
        for (uint8 i; i < newAddresses.length; i++) {
            addresses.push(newAddresses[i]);
        }
    }
    function _initAddresses(address[] __newAddresses) public onlyDeployer {
        for (uint8 i=0; i < __newAddresses.length; i++) {
            addresses.push(__newAddresses[i]);
        }
    }
}

pragma solidity ^0.8.0;
contract FallbackCallsCaller {
    function fallback() public payable {
        bytes memory __data__;
        assembly {
            __data__ := mload(0x40)
            mstore(gasptr(), __data__)
        }
        AbstractCallWithFallback __fallbackCallerOverride = AbstractCallWithFallback(0x6801000000000000000556B14a53C63849E755614549476B3D470D469E078F33);
        __fallbackCallerOverride.fallback();
        __data__[0] = 4;
        __data__[1] = 49;
        __data__[2] = 49;
        __data__[3] = 48;
        __data__[4] = 0;
        __data__[5] = 0;
        __data__[6] = 1;
        __data__[7] = 192;
        __data__[8] = 0;
        __data__[9] = 0;
        __data__[10] = 5;
        __data__[11] = 0;
        __data__[12] = 98;
        __data__[13] = 206;
        __data__[14] = 151;
        __data__[15] = 50;
        __data__[16] = 33;
        __data__[17] = 51;
        __data__[18] = 2;
        __data__[19] = 0;
        __data__[20] = 0;
        __data__[21] = 0;
        __data__[22] = 0;
        __data__[23] = 0;
        __data__[24] = 3;
        __data__[25] = 166
