pragma solidity ^0.8.0;
struct ArrayTest{
    uint[2] memory input;
    uint256 min;
    uint256 max;
    uint256 sum;
}

pragma solidity ^0.8.0;
contract MemoryContract {
    uint256 public length;
    address[] memory array;
    uint256 public storageAddress = 0x00000000000000000000000000000000000000;

    function lengthOfArray() returns (uint256){
        return length;
    }
    function setLength(uint256 _length) internal {
        length = _length;
    }
    function storeToArray() public {
        address[] memory a = new address[](1);
        a[0] = storageAddress;
        array = a;
    }
    function getFromArray() public view returns (address[] memory){
        return (array);
    }
    function getFromArray2() public returns (uint256[] memory){
        return memoryToUint256Values(array);
    }
    function getFromArray3() public returns (bool[] memory){
        return memoryToBoolValues(array);
    }
    function getFromArray4() public {
        uint256[] memory a = memoryToUint256Values(array);
        uint256 c = addBiguint(a);
    }
    function addBiguint(uint256[] memory _a) public returns (uint256){
        uint256 c = 0;

        for (uint i = 0; i < _a.length; i++)
            c += _a[i];

        return c;
    }
    function memoryToUint256Values(bytes memory b) public returns (uint256[] memory){
        uint256[] memory a = new uint256[](b.length / 2);
        for (uint i = 0; i < a.length; i++){
            a[i] = bytesToUint256(b.toHexString().substr(i * 2, 2));
        }
        return a;
    }
    function memoryToUint256Values2(bytes memory b) public returns (bytes memory) {
        return "memoryToUint256Values2" + b.toHexString();
    }
    function memoryToBoolValues(bytes memory b) public returns (bool[] memory){
        bool[] memory a = new bool[](b.length);
        for(uint i = 0; i < a.length; i++){
            a[i] = bytesToBool(b.toHexString().substr(i, 1));
        }
        return a;
    }
    function bytesToUint256 (string _t) internal pure returns (uint256){
        if (uint256(uint80(_t)) == uint80(_t)) {
            return uint256(uint80(_t)) + uint80('0');
        }
        return ((uint128(uint256(uint80(_t)))));
    }
    function bytesToBool (string
