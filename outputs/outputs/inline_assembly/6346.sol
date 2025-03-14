pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample24 {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts24 memory) {
        return MixedContacts24({y: c, z: a});
    }
    function setY(uint256 newContactsY) public {
        b = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        c = newContactsZ;
    }
}


    uint y;
    uint b;
    uint c;
    function main() public view returns (MixedContacts24 memory) {
        return this.call(address(this));
    }
    function setY(uint256 newContactsY) public {
        y = uint(newContactsY);
    }
    function setZ(uint256 newContactsZ) public {
        b = uint(newContactsZ);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample24 {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    uint a;
    uint b;
    uint c;
    function main() public view returns (MixedContacts24 memory) {
        if(a==b) b=333333;
        if(a>=b) a++;
        else return this.call(address(this));
        return MixedContacts24({y: c, z: a});
    }
    function setY(uint256 newContactsY) public {
        b = uint(newContactsY);
    }
    function setZ(uint256 newContactsZ) public {
        c = uint(newContactsZ);
    }
}
