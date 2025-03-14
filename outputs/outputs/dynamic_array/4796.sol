pragma solidity ^0.8.0;
contract Test4 {
    struct InnerArray { uint256 item; }
    uint256[] storageData;
    function MutateData() public {
        storageData = new uint256[](0);
        storageData.push(10);
        storageData.push(100);
        InnerArray storageItem1 = storageData.push(InnerArray({item: 200}));
        InnerArray storageItem2 = storageData.push(InnerArray({item: 300}));
    }
}
