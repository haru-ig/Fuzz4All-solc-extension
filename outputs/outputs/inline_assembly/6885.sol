pragma solidity ^0.8.0;
contract MutatedContactsExample180 {

    function updateContactState(
        bytes20 owner,
        uint256 contactId,
        uint8 state
    ) public {
        assembly {
            let contact := _loadContact(add(contactId, 0x100))
            let ownerAddress := load(owner)

            if state == 1 {
                set(contact, 0x4e, ownerAddress)
            } else {
                set(contact, 0x4e, 0x0)
            }
        }
    }

    function _loadContact(address contact)   internal returns (uint8) {

        uint8 _state;
        assembly {
            _state := and(load(contact), 0xff)
            if eq(_state, 0) {
                revert()
            }
        }
        return (_state);
    }

    function set(uint8 _state, uint8 _field, address _value)  public {





        uint8 previousValue;
        assembly {
            previousValue := and(load(add(contactId, 0x106)), 0xff)
            store(add(contactId, 0x106), xor(previousValue, _field))
            store(add(contactId, 0x106), add(previousValue, _field))

            if eq(eq(_state, 0), true) {
                state := add(state, eq(_field, 0), and(previousValue, 0xff))
            }

            state := add(state, eq(previousValue, _field))
        }
    }
}
