pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 is MixedContactsExample24 {

    uint256 newContactsY = 16;
    function setY(uint256 newContactsY) public {
        c = newContactsY;
    }

    uint256 newContactsZ = 328;
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
    function main() public view returns (MixedContactsExample16 memory) {
        return MixedContactsExample16();
    }
}
