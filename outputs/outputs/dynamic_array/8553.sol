pragma solidity ^0.8.0;

contract Modifer {
    uint private numInts;
    uint private dataSize;
    uint private data1Index;
    uint private data2Index;
    address private admin = payable(msg.sender);
    mapping(address => uint[0]) testAddresses;
    Modifer(uint z) { numInts = 0; dataSize = 2; data1Index = 1; data2Index = 2; }
    modifier onlyCaller { require(msg.sender == admin, "Only admin can call this modifier"); _; }
    function setDataSize(uint s) public onlyCaller { dataSize = s; }
    function setIntAtIndex1(uint i) public onlyCaller { data1Index = i; }
    function setIntAtIndex2(uint i) public onlyCaller { data2Index = i; }
    function getAddresses() public view returns(address[] memory addresses) {
        addresses = new address[](1);
        addresses[0] = msg.sender;
    }
    function incrementInts() public { numInts += 1; }
    function getInt() public view returns (uint storedInts) {
        storedInts = numInts;
    }
}


pragma solidity ^0.8.0;
contract MemoryDataTest {
    uint public bytesSize;
    uint public intSize;
    uint[2] memory a;

    Modifer _modifier;

    constructor() public {
        _modifier = new Modifer(2);
        bytesSize = 2;
        intSize = 2;
    }

    function setBytesSize(uint s) public onlyCaller {
        bytesSize = s;
    }
    function setIntsSize(uint s) public onlyCaller {
        intSize = s;
    }
    function modData(uint[] memory z) public returns (uint bytesRet, uint intRet) {
        bytesRet = bytesSize;
        intRet = intSize;

        for (uint i = 0; i < z.length; i++) {
            a[i] = i;
        }
        for (uint i = 0; i < z.length; i++) {
            _modifier.setIntAtIndex1(z[i] * i);
            _modifier.setInts(z[i]);
            _modifier.setData(i);
            _modifier.incrementInts();
            _modifier.modAddressSet(i);
            _modifier.getAddresses();
            _modifier.modAddresses(i);
            _modifier.intData(i);
        }
    }
    function modAddressSet(uint i) public onlyCaller {
        testAddresses[i] = testAddresses[i] + 3;
    }
