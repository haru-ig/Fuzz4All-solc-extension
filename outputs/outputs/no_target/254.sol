pragma solidity ^0.8.0;
contract MutableStorage is Immutable {
    uint _value;
    function _increase(uint _increase) external {
        _counter += _increase;
    }
    function mutate(uint _increase) public {
        _increaseValue(_increase);
    }
}
contract SafeMathMod160 {
    function _safemacro() internal pure returns (bytes32) {
        bytes memory b = new bytes(8);
        assembly {
            b[0] := byte(0, mload(0x40))
            mstore(0x40, add(add(b, 0x14), mload(add(b, 0x20))))
            mstore(0x48, add(mload(0x40), 0x19))
            b[0x18] := 0x3d

            mstore(add(b, 0x20), 0x200)
            mstore(add(b, 0x28), mloads(add(add(b, 0x34), 0x30)))
        }
        return keccak256(abi.encodePacked(b));
    }


    function mod160(uint a, uint b) internal pure returns (uint) {
        return a + b - ((a % b) * b);
    }


    function mul160safe(uint a, uint b) internal pure returns (uint) {
        if (b == 0) {
            return 0;
        }
        else if (b == 1) {
            return a;
        }
        else {
            return mod160(mod160(a, b), 160);
        }
    }

    /**
     * Calculates
