pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 a;
        uint256 b;
    }
    uint256 a;
    uint256 b;
    uint256 x;
    function main() public view returns (MixedContacts25 memory) {
        return MixedContacts25(a, b);
    }
    function setX(uint256 newData) public {
        x = newData;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    struct MixedContacts26 {
        uint256 x;
    }
    uint256 x;
    function main() public view returns (MixedContacts26 memory) {
        return MixedContacts26(x);
    }
    function setX(uint256 newContactsX) public {
        x = newContactsX;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample27 {
    struct MixedContacts27 {
        uint256 x;
    }
    uint256 x;
    function getX() public view returns (MixedContacts27 memory) {
        return MixedContacts27(x);
    }
}<fim_middle>library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {



        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient
