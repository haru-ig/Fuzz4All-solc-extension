pragma solidity ^0.8.0;
contract Mutator {
  function set(uint64 _new) public {
    uint8 a = 11;
    uint8 b = 72;
    uint8 c = 21;
    uint8 d = 23;
    uint8 e = 31;
    uint8 f = 8050;
    uint8 g = 10011;
    uint8 h = 54932;
    address[] memory contractAddresses = new address[](10);
    address[] memory ownerAddresses = new address[](10);
    address[] storage addressAddresses = new address[](10);

    uint16[] memory shortnessAddresses = new uint16[](7);
    uint8[] storage byteStorages = new uint8[](11);
    uint32[] storage uintType = new uint32[](1);
    IAddressable addressableInstance = IAddressable(address(this));

    contractAddresses[10] = addressableInstance;

    ownerAddresses[0] = msg.sender;
    addressAddresses[4] = msg.sender;
    addressAddresses[9] = addressableInstance;

    addressAddresses[8] = addressAddresses[7];

    shortnessAddresses[0] = 200000000000000000;
    shortnessAddresses[1] = 10000;
    shortnessAddresses[2] = 25500;
    shortnessAddresses[3] = 65534;
    shortnessAddresses[4] = 5322322342;
    shortnessAddresses[5] = uint16(2323);
    shortnessAddresses[6] = uint16(11);

    byteStorages[0] = 1;
    byteStorages[1] = -128;
    byteStorages[2] = -129;
    byteStorages[3] = -130;
    byteStorages[4] = -131;
    byteStorages[5] = -213;
    byteStorages[6] = -127;
    byteStorages[7] = 254;
    byteStorages[8] = 255;
    byteStorages[9] = -128;
    byteStorages[10] = 12
