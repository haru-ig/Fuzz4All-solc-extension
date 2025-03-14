pragma solidity ^0.8.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SignedSafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Context.sol";
contract ArrayArray is Context, IArray, SignedSafeMath {
    uint256[] array;
    function push(uint256 val) public override {
        arrayPush(getAccount(), val);
    }
    function pop(uint256 len) public override returns(uint256){
        return arrayPop(getAccount(), len);
    }
    function set(uint256 index, uint256 val, uint256 len) public override {
        arraySet(getAccount(), index, val, len);
    }
    function get(uint256 index, uint256 len) public override view returns (uint256) {
        return arrayGet(getAccount(), index, len);
    }
    function getMin(uint256 len) public override view returns (uint256) {
        return arrayMin(getAccount(), len);
    }
    function getMax(uint256 len) public override view returns (uint256){
        return arrayMax(getAccount(), len);
    }
    function sum(uint256 len) public override view returns (uint256) {
        return arraySum(getAccount(), len);
    }
    function sort(uint256 len) public override {
        uint256[] storage arr = array;
        uint256 _len = arr.length;
        uint8 len8 = uint8(0);
        uint16 len16 = uint16(0);
        uint32 len32 = uint32(0);
        uint64 len64 = uint64(0);
        IArray arr8;
        IArray arr16;
        IArray arr32;
        IArray arr64;
        assembly {
            len8 := mload(add(len, 0x20))
            len8 := div(len8, 0x10)
            array := add(arr, mul(1024, len8))
        }
        for (uint256 i = 0; i < _len -1; ++i) {
            arr[i + len] = arr[i];
        }
