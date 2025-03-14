pragma solidity ^0.8.0;
contract C {
    function m() public {
        uint8[] memory dynamicArray = new uint8[](10);
        dynamicArray[4] = 4;
        I2  temp;
        try temp.use(1, 1, 1, 1, 1) {
            assert(true);
        } catch Error(bytes memory err) {
            assert(bytes(err).length == 0);
        }
    }
}
