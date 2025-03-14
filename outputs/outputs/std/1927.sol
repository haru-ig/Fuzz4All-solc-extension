pragma solidity ^0.8.0;
contract Casts  {
    string public name;
    string public owner;
    uint public id;
    constructor(uint id1, string memory n, string memory o) {
        id = id1;
        name = n;
        owner = o;
    }
}

contract Array2D {
    uint256 public rowsTotal;
    uint256 public colsTotal;
    uint256 public [rowsTotal][colsTotal];
    uint min;
    uint[rowsTotal] colCount;
    uint[rowsTotal] rowCount;
    mapping(uint => uint) public rowSum;

    constructor(uint m, uint k) public {
        rowsTotal = m;
        colsTotal = k;
    }

    function rowSum(uint row) public view returns (uint) {
        return rowSum[row];
    }

    function _sumOfCols(uint col) public view returns (uint total) {
        for(uint i = 0;i<colsTotal;i++){
        total= total + colCount[col];
        }
    }

    function _sumOfRows(uint row) public view returns (uint total) {
        for(uint i = 0;i<rowsTotal;i++) {
        total += rowCount[row];
        }
    }

    function _findMin() public view returns (uint) {
        for(uint i = 0; i<rowsTotal;i++) {
        if(rowSum[i] < min){
        min = rowSum[i];
        }
        }
    }
}
