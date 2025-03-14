pragma solidity ^0.8.0;
contract EfficientInlineAssemblyExample {
    uint256 _id = 3;

    uint256 internal _value = 10;
    address internal _seller = address(0xAE3e058e925cb85b62b8D19D781cC429149EC691);


    uint8 private calculateValue = 6;
    uint8 calculateValue = 6;


    function main() public pure {
        assembly {

            _id := add(_id, 1)
            _seller := add(_seller, 1)
            setStorageSlot(0, _id)
            setStorageSlot(1, 1)
            setStorageSlot(2, _seller)


            add(_value, 100000)
            calldatacopy(0, 0, 0)
            let result := getStorageSlot(0)


            let _index := 6
        }
    }


    function getStorageSlot(uint8 slotNumber) public view returns (uint256) {
        if (slotNumber < 3) {
            _id;
        }
        uint256 storageSlotData = 0;
        assembly {
            storageSlotData := mload(slotIDslotnumber)
        }
        return storageSlotData;
    }
    function setStorageSlot(uint8 slotNumber, uint256 slotNumberData) public {
        if (slotNumber < 3) {
            _id;
        }
        assembly {
            mstore(slotIDslotnumber, slotNumberData)
        }
    }

    function increaseValue() public {
        _value += 1;
        emit _increasedValue(_value);
    }
}
