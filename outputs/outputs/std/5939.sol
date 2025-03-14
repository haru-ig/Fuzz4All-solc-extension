pragma solidity ^0.8.0;
contract SemanticEvidentChanges12 {
    address add;
    uint256[] arr;
    uint256[] arr1;
    uint256[] arr2;
    function getAdd() public view returns (address) {
        return (add);
    }
    function setAdd(address _add) public {
        add = _add;
    }
    function getArr() public view returns (uint256[]) {
        return (arr);
    }
    function setArr(uint256[] memory _arr) public {
        require(arr.length == 0);
        arr = _arr;
        require(add!= address(0));
    }
    function setArr1(uint256[] memory _arr1) public {
        arr1 = _arr1;
    }
    function setArr2(uint256[] memory _arr2) public {
        arr2 = _arr2;
    }
    function getArr1() public view returns (uint256[]) {
        return (arr1);
    }
    function getArr2() public view returns (uint256[]) {
        return (arr2);
    }
    function getLastIndex() public view returns(uint256) {
        return arr.length-1;
    }
}
