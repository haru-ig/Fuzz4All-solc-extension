pragma solidity ^0.8.0;
library lib {
contract third {
    function get() public view returns (bytes memory) {
        return new bytes(1);
    }
}
contract third4 {
    function f() public view returns (bytes memory) {
        bytes memory b = lib.third.get();
        bytes memory c;
        assembly {
            c := add(data(0), 0x01)
        }
        return c;
    }
}
