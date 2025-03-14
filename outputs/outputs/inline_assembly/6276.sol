pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 public z;
    function main (MixedContacts memory ss){
    return main(ss);
    }
    function main(MixedContacts memory ss) public  pure returns (MixedContacts memory){
    ss.y = 3;
    ss.y /= z;
    return ss;
    }


}
