pragma solidity ^0.8.0;
contract Main {
    uint256 public internalIndex;
    struct InternalState {
        bool internalData;
        address internalDataAddress;
    }
    mapping(address => InternalState) public internalBlackboxes;
    event InternalBlackboxCreated (address indexed owner);


    function createInternalBlackboxes (uint _n) public {
        for (uint i=0; i<_n; i++) {
            internalBlackboxes[address(internalIndex)] = InternalState({internalData: false, internalDataAddress: msg.sender});
            intialize(internalBlackboxes, internalIndex++);
        }
    }
    function initialize (mapping (address => InternalState) blackboxMap, uint index) private {

       blackboxMap[address(internalIndex)] = InternalState({internalData: false, internalDataAddress: address(0)});
        bool newInternalDataFlag = (blackboxMap[address(internalIndex)].internalDataAddress!= address(0));

        if (newInternalDataFlag) {

            uint internalDataIndex = address(internalIndex).slot();
            blackboxMap.erase(internalDataIndex);
        }
    }
}
