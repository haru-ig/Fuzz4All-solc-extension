pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 y;
        uint256 z;
    }
    MixedContacts25 memory _state;
    MixedContacts25 memory _newState;
    Arbiter a;
    function main() public pure {
        _newState = a.execute(MixedContactsExample25 {y: 1, z:2});

        a.add(MixedContactsExample25{y: _newState.y + 2, z: 3});
    }
}
