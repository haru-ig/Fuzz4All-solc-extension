pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public returns (MixedContacts memory){
        a += c;
        b += a;
        c += b;
        return MixedContacts({y: c, z: b});
    }
}
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    public view returns (MixedContacts memory){
        oldContacts = newContacts;
        oldContacts = MixedContacts({y: oldContacts.y + oldContacts.z, z: oldContacts.y - oldContacts.z});
        return oldContacts;
    }
}
/* You can also mix-in a library
contract MixedContactsExample19 is ReentrancyExampleLibrary {

    function myFunc(uint256 param)
        public override
        returns(uint256)
    {
        return ReentrancyExampleLibrary.myCall(param);
    }


    function myCall(uint256 param)
        public
        returns (uint256 results)
    {
        return myFunc(param);
    }
}
contract MixedContactsExample23 is ReentrancyExampleLibrary from ReentrancyExampleLibrary {

    function myCall2() public view returns (bytes memory) {

        return ReentrancyExampleLibrary.myCall(bytes(this));
    }
}

contract DerivedMixed
