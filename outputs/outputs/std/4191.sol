pragma solidity ^0.8.0;
contract Mutate {
    uint[2][3] storage storageX;
    uint[2][3] memory memoryX;
    uint[8] const memory constantData;
        uint[8] storage data = constantData;
    uint[8] memory memoryData;

        function Get(uint[2] memory a, uint[2] memory b) public pure returns (uint x) {
            return a[0];
        }

        function Modify(uint[2][2][3] memory a, uint newValue) public {
            a[0][0] = newValue;
        }
}
