pragma solidity ^0.8.0;
contract C6 {
    function setString(address addressString, string memory content) public {
        uint256 len = content.length;
        uint256 new_addr = address(this);
        bytes memory b = new bytes(uint256(len) + 4);
        uint256 k = 0;
        bytes memory newAddrs = new bytes(3);
        while (k!= len) {
            bytes1 b1;
            assembly {
                b1 := mload(add(add(content, k), 0x20))
            }
            if (k == 0) {
                newAddrs[0] = b1;
            } else if (k == 1) {
                newAddrs[1] = b1;
            } else {
                newAddrs[2] = b1;
            }
            k += 1;
        }




        b.assign(newAddrs);

        C5 memory c;
        c.setInt(Foo.First, new_addr);
        setInt(Foo.Second, c);
    }
    function getFoo(address addr) public view returns (string memory, uint256) {
        uint256 len = 0;
        bytes memory data = new bytes(3);
        bytes32 r = address(this);
        if (r!= addr) return (abi.encodePacked(""),0);
        for (uint256 i=0; i < 3 && (len == 0 || i > len); i++) {
            bytes1 b;
            assembly {
                b := byte(add(add(addr, 0x1), i))
            }
            data[i] = b;
            if(b < 0x80) {
                len = i + 1;
            }
        }
        return (abi.encodePacked(data), len);
    }
    struct Bar {
        string a;
        uint256 z;
    }
    function getBar(Foo foo, uint256 y, uint8 x) public view returns (uint8, string memory) {
        string memory z = "foo";
        if (x == 2) {

            uint256 tmp =
