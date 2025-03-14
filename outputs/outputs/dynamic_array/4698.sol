pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        data = 16;
        require(data == 16, "FAILS");
        uint value = data + 1;
        require(value == 2, "FAILS2");
        store[3] = value;
        require(stored == 4, "FAILS3");
        stored -= 2;
        data -= 1;
        require(data == 13, "FAILS4");
    }
}

contract Test {
    address[] dynamicAddress;
    address[] initialAddress;
    uint[] dynamicUint;
    uint[] initialUint;
    uint56[] dynamicUint56;
    uint56[] initialUint56;

    function createDynamicAddresses() internal pure returns (address[] memory) {
        return new address[](2);
    }

    function createInitialAddresses() internal pure returns (address[] memory) {
        return new address[](2);
    }

    function createDynamicUints() internal pure returns (uint[] memory) {
        return new uint[](2);
    }

    function createInitialUints() internal pure returns (uint[] memory) {
        return new uint[](2);
    }

    function createDynamicUint56s() internal pure returns (uint56[] memory) {
        return new uint56[](2);
    }

    function createInitialUint56s() internal pure returns (uint56[] memory) {
        return new uint56[](2);
    }

    function MutateData() public {
        initialAddress[0] = address(0);
        initialAddress[1] = address(0);
        initialUint[0] = 0;
        initialUint[1] = 0;
        initialUint56[0] = 0;
        initialUint56[1] = 0;
        uint counter = 0;
        for(uint i = 2; i < 20; i++) {
            initialAddress[counter] = address(new Test());
            uint8[] memory a = new uint8[](i+1);
            a[0] = uint8(counter);
            initialAddress[i] = address(new Test());
            initial
