pragma solidity ^0.8.0;
contract NewY4 {
    struct Pair { uint256 key; address value; }
    mapping(uint => Mapping1) public m;
    function myfunction(Pair[] memory pairs) public {
        uint[] memory keys = new uint[](5);
        for (uint i = 1; i < pairs.length; i++) keys[i] = m[pairs[i].key].key;
        emit Emit2(key);
    }
    struct Mapping1 { uint256 key; address value; }
}

pragma solidity ^0.8.0;
contract NewY5 {
    function myfunction() public {
        mapping(uint => uint) key2value;
        key2value[1] = 1;
        mapping(uint => uint) key2value2;
        require(key2value[1] == key2value2[
