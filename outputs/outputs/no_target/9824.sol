pragma solidity ^0.8.0;
contract c {
    address public c = address(0x7a24644e09c7418cBFD0d013f385C95f898ca428);
    mapping(address => address) private internalMapping;
    function f() public view only returns (bytes memory) {
        internalMapping[this] = address(this);
        internalMapping[address(this)] = address(this);
        internalMapping[address(0x1000000000000000000000000000000000000000)] = address(0x1000000000000000000000000000000000000000);
        if (exists) {
            return bytes(c);
        } else { return bytes(address(this)); }
    }
}
