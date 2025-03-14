pragma solidity ^0.8.0;
contract SemanticallyEquivToMutatedFallbackModifier {
    struct InternalStorage {
        uint internalData;
        uint internalDataInContract;
    }
    struct MutatedInternalStorage {
        uint internalData;
        uint internalDataInContract;
    }
    uint internal constant INITIAL_VALUE = 23;
    MutatedInternalStorage internal mutatedStorage;
    address payable owner;
    constructor() {
        mutatedStorage = MutatedInternalStorage(INITIAL_VALUE, INITIAL_VALUE);
    }




    function _upgrade(address newAddress) internal returns (bool ok) {
        if (newAddress!= address(0)) {
            mutatedStorage.internalData = 100;
            mutatedStorage.internalDataInContract = 0;
            mutatedStorage.internalData = INITIAL_VALUE;
        }
        owner = payable(newAddress);
        return true;
    }



    function _downgrade(address newAddress) internal returns (bool ok) {
        owner = payable(newAddress);
        return true;
    }




    function upgradeTo(address newAddress) public {
        if (_upgrade(newAddress) && newAddress!= address(0)) {

            assert(owner.send(mutatedStorage.internalData));
        }
    }


    function downgradeFrom() public {
        address newAddress = address(mutatedStorage);






        assert(_downgrade(newAddress));
    }
    function testEquivalence() public {
        assert(owner.send(mutatedStorage.internalDataInContract));
    }
}
