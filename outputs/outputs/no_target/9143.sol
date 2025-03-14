pragma solidity ^0.8.0;
contract mutators_v2 {
    struct Address {
        address _address;
    }

    event AddressChangedEvent(address indexed _previous, address indexed _new);

    function emitsEvent() public pure virtual {
        emit AddressChangedEvent(msg.sender, 1);
    }
}
