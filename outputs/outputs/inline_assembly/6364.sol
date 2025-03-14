pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 x;
        uint256 y;
    }
    function main() public view returns (MixedContacts25 memory) {
        return MixedContacts25({x: 42, y: (a + b - c)});
    }
    function setX(uint256 newContactsX) public {
        a = newContactsX;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25a {
    uint256 value;

    function main() public {
        uint8 foo = 0x7F;
        bool bar = false;
        uint16 constant baz = 0x1234;

        value = foo & bar | (baz & ~(((x < 1) && bar)!= bar)).x + bar ^ (baz & bar);

        emit (value == 3);
    }
}

library SafeMathE {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;

        require(a == 0 || c == b);
        return c;
    }
}

library SafeMathR {
    uint256 private constant _mask = 2**256 - 1;
    bool private _signed;

    function toBytes32(bytes20 input) internal pure returns (bytes32) {
        return
            bytes32(uint256(uint128(uint112(
            uint160(uint256(uint80(input), _signed)))); _mask))); }

    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 sum = a + b;
        if (sum > uint256(uint12
