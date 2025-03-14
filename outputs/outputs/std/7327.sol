pragma solidity ^0.8.0;
contract MyContract {
    struct MyStruct {
        uint a;
        uint b;
    }

    function MyContract() {
        MyStruct storage memory s = storageOf();
        s.a = 1;
        s.b = 2;
        uint storedA = s.a;
        uint storedB = s.b;
        delete storageA;
        delete storageB;
        uint valueInZero = 0;
        uint valueNo = 123;
        uint[] storageArray = new uint[](3);
        uint[] memory arrayOfMemory = new uint[](1);
        address storageAddress = getContractAddress();
    }

    function getContractAddress() public view virtual returns (address) {
        return address(this);
    }

    function add(uint x, uint y) public view returns (uint) {
        return x + y;
    }

    mapping(uint => uint) public storageA;
    mapping(uint => uint) public storageB;

    function storageOf() internal view returns (MyStruct storage) {
        return MyStruct(storageA);
    }
}
