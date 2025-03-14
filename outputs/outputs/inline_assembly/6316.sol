pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SafelyMutatingContactsExample19 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() returns (MixedContacts memory){
        a = 3;
        b = 4;
        c = 5;
        return MixedContacts({y: a-c, z: b});
    }
}
contract SafelyMutatingContactsExample20 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    returns(MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({y: newContacts.y + newContacts.z, z: newContacts.y - newContacts.z});
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract UsingTwoInlineAssemblyBlocksExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    public view returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts(
        {y: assembly {
            let $y := oldContacts.y + oldContacts.z;
            return ($y; 0)
        }.y, z: assembly {
            let $z := oldContacts.y - oldContacts.z;
            return ($z; 0)
        }.z})
    }
}
contract UsingTwoInlineAssemblyBlocksExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        Mixed
