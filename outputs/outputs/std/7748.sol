pragma solidity ^0.8.0;
contract MutateOld {
    mapping(address => address) private map;

    function getMap() public view returns (address[] memory) {
        uint length = x.length;
        address[] memory a = new address[](length);
        for (uint i = 0; i < length; i++) {
            a[i] = "0x" + bytes(uint256(i)).toString(16);
        }
        return a;
    }

    function set(address addr, uint256 val) public returns (uint256 ret) {
        uint256 old = map[addr];
        map[addr] = val;
        return old;
    }

    function get(address addr) public view returns (uint256) {
        return map[addr];
    }
}
