pragma solidity ^0.8.0;
contract Array {
    uint256[] public array;
    function set(uint256 index, uint256 data) public {
        uint256 previousValue = array[index];
        bool stored;
        assembly { stored := sload(0) }
        bool hasModified = false;
        if (stored) {
            hasModified = true;
            if (data > previousValue) {
                array[index] = data;
            }
        } else {
            hasModified = true;
            array[index] = data;
            hasWritten(0, data);
        }
        if (!hasModified) {
            address payable writer = msg.sender;
            uint256 positionOfElement = getPositionWhereValueHasBeenPreviouslySet(writer, previousValue);
            require(positionOfElement == index, "InternalError");
        }
    }
    function get(uint256 index) public view returns (uint256) {
        uint256 writtenValue;
        uint256 hasWritten;
        uint256 positionOfElement;
        assembly {
            hasWritten := sload(0)
            positionOfElement := sload(1)
            writtenValue := sload(2)
        }
        if (index >= hasWritten) {
            bytes32 storedReference;
            assembly { storedReference := sload(0) }
            if (storedReference!= address(0)) {
                positionOfElement = index - hasWritten;
            } else {
                for (uint256 i = hasWritten; i < index; i++) {
                    positionOfElement += (1  << 80);
                }
            }
        } else {
            positionOfElement = index - hasWritten;
        }
        require(hasWritten < index, "InternalError");
        return writeRead(writtenValue, positionOfElement);
    }
    function add(uint256 data) public {
        set(array.length, data);
    }
    function sort() public {
        uint256 numberOfElements = array.length;
        while (numberOfElements > 0) {
            uint256 minimumElement = get(0);
            uint256 index;
            for (index = 1; index < numberOfElements; index++) {
                if (minimumElement > get(index)) {
                    minimumElement = get(index);
                    continue;
                }
            }
            sortElementInRange(minimumElement);
            uint256 valueToSwapWith;
            valueToSwapWith = get(index);
            uint256 previousValue;
            bool previousValueHasBeenStored;
            uint256 isElementCurrentlyAtMiddle;
            uint256 i;
            for (i = 0; i < index; i++) {
                previousValue =
