pragma solidity ^0.8.0;
contract Test1865V {
    address a1;
    event MyEvent(address indexed address, uint256 indexed _id);
    mapping (uint256 => address) public toAddresses;
    modifier test() { toAddresses[123] = a1; _; }
    function set(address addr) public test {
        a1 = addr;
    }
    function get() public view returns (address) {
        return toAddresses[123];
    }
    bool is(address) public view returns (bool) {
        return a1 == toAddresses[123];
    }
}
function toAddressArray(uint i) pure public returns (address[]) {
    return new address[](2 ** i + 1);
}
contract Test1865V {
    event MyEvent(address indexed address, uint256 indexed _id);
    mapping (uint256 => address[]) addresses;
    modifier test() { addresses[123] = new address[](2); _; }
    function set(uint i) public test {
        addresses[123].push(new address[](2 ** i + 1));
    }
    function get() public view returns (address[]) {
        return addresses[123];
    }
    bool is(address[]) public view returns (bool) {
        address[] memory ary = addresses[123];
        for (uint i = 0; i < ary.length; ++i) {
            if (ary[i]!= toAddresses[123]) {
                return false;
            }
        }
        return true;
    }
}
