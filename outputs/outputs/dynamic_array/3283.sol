pragma solidity ^0.8.0;
interface I {
    function remove(string memory key) external;
    function add(string memory key, string memory val) external;
}
contract E {
    string[] public dynamicData;
    mapping(string => string) public storageData;
    I public dynamicI;
    mapping(string => I) public storageI;
    function set(string memory key, string memory val) public {
        I(dynamicI).remove(key);
        I(dynamicI).add(key, "test");

        if (I(dynamicI).get(key)!= "test")
            revert();

        I(storageI).set(key, val);
        if (I(storageI).get(key)!= val)
            revert();

        storageData[key] = val;
    }
    function get(string memory key) public view returns (string memory) {
        if (!storageData.contains(key) &&!DynamicArrayCleanupStorage(storageData).containsData(key))
            revert();
        return storageData[key];
    }
    function remove(string memory key) public {
        I(storageI).remove(key);
        I(storageI).add(key, "test");

        if (I(storageI).get(key)!= "test")
            revert();

        if (!storageData[key] == "test")
            revert();

        storageData[key] = "";
        dynamicData.remove(key);
    }
}
