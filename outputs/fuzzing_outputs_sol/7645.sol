pragma solidity ^0.8.0;
contract NoDefaultEquivalence
{
    bytes32 dataKey;
    mapping(address => bytes32) public dataMap;
    mapping(bytes32 => mapping(bytes32 => uint256)) public hashArray;
    struct Foo {
        uint256 key1;
        uint256 key2;
    }
    mapping(bytes32 => Foo) public test;

    constructor()
    {
        dataMap["0x761910746c0c643283a080199dd7da78a8b13c090e8cf678d99ddae34060f5da"] = dataKey;
        hashArray[dataKey][bytes32("0x0")] = 0;
    }
    function get(address _caller)
    public
    view
    returns(mapping(bytes32 => mapping(bytes32 => uint256)))
    {
        return (hashArray[_caller][dataKey]);
    }
    function _testMutatedContract() public view returns(uint256) {

        return (test[bytes32("0x761910746c0c643283a080199dd7da78a8b13c090e8cf678d99ddae34060f5da")].key1);
    }










    function changeKey(uint _value) public returns(uint) {
        if (block.timestamp > 210) {
            dataMap[bytes32(1*9e18)] = bytes32(dataKey = bytes32(dataKey + 1));
            hashArray[dataKey][bytes32(38*9e18)] = 1;
        } else {
            dataMap[bytes32(1000*9e18)] = bytes32(dataKey = bytes32(dataKey + _value));
            hashArray[dataKey][bytes32((8e18 + hashArray[dataKey][bytes32(1000*9e18)])/9e18)] = 2;
        }
        test[bytes32("0x761910746c0c643283a080199dd7da78a8b13c0
