pragma solidity ^0.8.0;
contract Y {
    function f() public pure {
        address _address;
        assembly {
            address(0) => _address
        }
        if (!address(0x00)) {
            revert();
        }
    }
}
