pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    event MyEvent(address who);
    function MutateData() public {
        stored -= 7;
        stored += 8;
        store[15] = 97;
        stored -= 10;
        stored += 97;
        require(stored == 8, "FAIL0");
        stored += 25;
        stored -= 7;
        require(stored == 6, "FAIL1");
    }
    function TestAddressEvent() public payable {
        address account = msg.sender;
        MyEvent(account);
    }
}




pragma solidity ^0.5.0;
contract MyLibrary {
    bytes private bytes;
    constructor(bytes memory b) public {
        bytes = b;
    }

    function read(uint256 i) public view returns (bytes memory) {
        require(i < bytes.length, "FAIL");
        return bytes[i];
    }



    function readBits(address addr, uint pos) public view returns (uint256) {
        uint256 bytepos = pos / 8;
        uint256 bitpos = 7 - (pos % 8);
        if (bitpos > 0) {
            uint8 v = bytes[bytepos];
            return (v >> bitpos) & 1;
        }
        return 0;
    }
}
