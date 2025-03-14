pragma solidity ^0.8.0;



contract SomeStore {
    uint public uint;
    uint[] internal uints;
    uint8 internal uint8;
    uint8[] internal uint8s;
    address internal address;
    address[] internal addresses;

    mapping (address => SomeInterface) internal memoryInterfaces;

    uint internal getStorageLayoutTest() public returns (uint storeSize, uint storeAt) {

        uint[] memory mem0 = new uint[](uint(20));
        return (0, uint(mem0));
    }

    uint internal getStorageLayoutTest2(uint arrSize) internal returns (uint storeSize, uint storeAt) {


        uint[] internal mem0 = new uint[](arrSize);
        return (uint(mem0.length), uint(mem0));
    }

    mapping (address => uint256) internal addressMap;
    address internal getArrayStoreAtTest() public returns (address storeAt) {
        return address(addressMap[msg.sender]);
    }



    external function add(address[] callsdata a) public {
        a.push(msg.sender);
    }



    public function readBoth(uint[] calldata x0, uint[] calldata x1) external returns(uint256) {
        x0.push(0);
        uint storage x = uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint8s.length))))))))))));
        x.push(0);
        x1.push(0);
        return uint8;
    }



    /*
