pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71 {
    uint b;
    uint c;
    mapping(uint=>uint) memory _contacts;
    function getContact(uint i) constant public returns (uint){
        return _contacts[i];
    }
    function setAB(uint d) public {
        b = d;
        c = d;
        _contacts[0] = d;
        _contacts[1] = d;
    }
}
contract MixedContactsExample71 {
    uint b;
    uint c;
    event SetAB(uint a, uint b);
    mapping(uint=>uint) memory _contacts;
    function getContact(uint i) constant public returns (uint){
        return _contacts[i];
    }
    function setAB(uint d) public {
        b = d;
        c = d;
        _contacts[0] = d;
        _contacts[1] = d;
        emit SetAB(b, c);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71 {
    function test() public {
        MixedContactsExample71 instance = new MixedContactsExample71();
        uint a = instance.setAB(5);
        uint b = instance.getContact(1);
        assert(a == b);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71 {
    function test() public {
        MixedContactsExample71 instance = new MixedContactsExample71();
        uint a = instance.setAB(5);
        uint b = instance.getContact(1);
        assert(a == b);
    }
}
