pragma solidity ^0.8.0;
contract Gates {
    address public contractAddress;
    address public storeAddress;

    uint counter;
    function GateContract () public {
        contractAddress = 0x000000000000000000000685E4c5E1A548F449EF;
        storeAddress = 0x000000000000000000007Eb517B846462d5b23787;
    }

    function add () public {
        Gates storage _this = Gates(contractAddress);
        _this.counter++;
    }

    function storeData (uint input) public {
        Gates storage _this = Gates(contractAddress);
        uint _val = _this.counter;
        _this.counter = _val + input;
        store(storeAddress, input);
    }

     function callStorageData (uint input) public {
        Gates storage _this = Gates(contractAddress);
        _this.counter = _this.counter + input;
        return store(storeAddress, input );
    }



     function store(address addressToStore, uint input) internal {
        StorageReceiver storage storageC = StorageReceiver(addressToStore);
        storageC.setValue(input);
    }
}
