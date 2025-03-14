pragma solidity ^0.8.0;
contract Test {
    function value() public view returns (bool) {
        bytes memory b;
        assembly {
            b := mload(add(0x60, 0x1))
        }
        (bool _, uint8 s) = abi.decode(b, (bool, uint8));
        return s < 1 && b > 0x0;
    }
}
