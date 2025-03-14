pragma solidity ^0.8.0;
contract ArrayExample {
    uint256[] arr;
    uint256 y;
    function setArrAndAdd(uint256 _arr, uint256 _y) public {
        arr.push(uint256(_arr));
        arr.push(uint256(_arr));
        y = _y;
    }
    function getAddAndY() public view returns (uint256, uint256) {
        return (uint256(arr[0]), uint256(arr[1]));
    }
    function getArrAndY() public view returns (uint256[], uint256) {
        return (arr, y);
    }
    function getArr() public view returns (uint256[]) {
        return (arr);
    }
}
