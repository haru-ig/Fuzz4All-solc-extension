pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
   uint256 newContactsY;
   uint256 newContactsZ;
    function main() public {
       MixedContacts23 mc = new MixedContacts23();
        mc.setY(newContactsY);
    }
}



pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample22 {
   uint256 newContactsY;
    uint256 newContactsZ;
    MixedContacts24 mc;
    function main() public {
        mc = new MixedContacts24();
        mc.setY(newContactsY);
    }

    function setY(uint256 newContactsY) public{
        this.mc.setY(newContactsY);
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts21 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts21 memory) {
        return MixedContacts21({y: a, z: b});
    }
    function attack() public view {
    }
    function setY(uint256 newContactsY) public{
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public{
        b = newContactsZ;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ComplianceExample14 {
    uint256 a;
    uint256 b;

    uint256 public constant Y = 10;

        function __C(uint
