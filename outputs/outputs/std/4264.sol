pragma solidity ^0.8.0;
interface IConvert{
    function stringToInt(string memory hexStr) external pure returns (uint256);
    function intToString(uint256 val) external pure returns (string memory);
}
pragma solidity ^0.8.0;
contract Memory{

    using IArray for uint256[];

    uint256[] memory arr;

    function push(uint256 val) external {
        arr.push(val);
    }

    function pop(uint256 len) public view returns (uint256) {
        require(len <= arr.length, "pop: bad input");
        arr = arr.slice(0, -len);
        return arr[arr.length - 1];
    }

    function set(uint256 index, uint256 val, uint256 len) public {
        require(len <= arr.length, "get: bad input");
        arr[index] = val;
    }

    function get(uint256 index, uint256 len) public view returns (uint256) {
        require(len <= arr.length, "get: bad input");
        return arr[index];
    }

    function getMin(uint256 len) public view returns (uint256) {
        require(len <= arr.length, "get: bad input");
        if (len == 0) {
            return uint256(0);
        }
        return arr[0];
    }

    function getMax(uint256 len) public view returns (uint256) {
        require(len <= arr.length, "getMax: bad input");
        if (len == 0) {
            return uint256(0);
        }
        return arr[arr.length - 1];
    }

    function sum(uint256 len) public view returns (uint256) {
        require(len <= arr.length, "sum: bad input");
        uint256 s = 0;
        for (uint256 i; i < len; i++) {
            s += arr[i];
        }
        return s;
    }

    function sort(uint256 len) public {
        require(len <= arr.length, "pop: bad input");
        for (uint256 i; i < len; i++) {
            uint256 j = i;
            while (j > 0 && arr[j -
