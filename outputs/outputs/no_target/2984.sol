pragma solidity ^0.8.0;
contract third {
    event o(address addr, bytes data);
    event e(uint256 data);
    function f(bytes memory b) public returns (bytes memory) {
        emit e(c);
        emit e(10);
        emit o(address(this), c);
        emit o(address(this), new bytes(1));
        emit o(address(this), new bytes(0));
        emit o(address(this), new bytes(2));
        return new bytes(0);
    }
    bytes public c;
}
