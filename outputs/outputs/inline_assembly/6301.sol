pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory prev,
        MixedContacts memory prevN,
        MixedContacts memory nextN,
        MixedContacts memory next,
        MixedContacts memory nextN1
    )
    public view returns (MixedContacts memory){
        return nextN1;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory prevPrevPrev,
        MixedContacts memory nextPrev,
        MixedContacts memory prev,
        MixedContacts memory nextN,
        MixedContacts memory next,
        MixedContacts memory next1
    )
    public view returns (MixedContacts memory){
        return next1;
    }
}
