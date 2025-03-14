pragma solidity ^0.8.0;
contract Array {}

pragma solidity ^0.8.0;
contract Memory {}

pragma solidity ^0.8.0;
contract Multiprecision {}

pragma solidity ^0.8.0;
contract Array is Array {


    address public owner;
    bytes32 internal constant INIT_EMPTY = "0x";
    address internal memoryAddress;

    mapping(bytes32 => bool) indexes;


    bytes32 memory private indexesEmptyValue;
    mapping(address => address) memoryAddress;

    function emptyValue() public view returns (bytes32) {
        return indexesEmptyValue;
    }

    function addArray(bytes32 indexName, address elementsAddress) public onlyOwner {
        require(!indexes[indexName]);
        indexes[indexName] = true;

        if (address(memoryAddress[elementsAddress]) == 0x) {
            memoryAddress[elementsAddress] = elementsAddress;
            bytes32 lastIndex = lastAddIndex();
            indexesEmptyValue = lastIndex;
            indexes[lastIndex] = true;
        }
        else {
            address arrayAddress = memoryAddress[elementsAddress];
            while(memoryAddress[arrayAddress]!= 0x)
                arrayAddress = memoryAddress[arrayAddress];
            memoryAddress[arrayAddress] = elementsAddress;
            bytes32 lastIndex = lastAddIndex();
            indexes[lastIndex] = true;
            memoryAddress[memoryAddress[arrayAddress]] = lastIndex;
        }
    }

    function sumArray(bytes32 indexName) public view returns (uint256) {
        uint256 sum = 0;
        bytes32 index = indexes[indexName];
        bytes32 lastIndex;

        if (address(memoryAddress[memoryAddress[index]]) == 0x) {
            lastIndex = indexesEmptyValue;
            if (indexesEmptyValue == INIT_EMPTY)
                return 0;
        }
        else {
            lastIndex = index;
        }


        do {
            if (indexes[memoryAddress[lastIndex]])
                sum += memoryAddress[lastIndex];
        }
        while (memoryAddress[lastIndex]!= 0x && indexes[memoryAddress[lastIndex]] == true && memoryAddress[lastIndex] < lastIndex);
        lastIndex = indexesEmptyValue;

        if (indexesEmptyValue == INIT_EMPTY) {
            lastIndex = 0;
