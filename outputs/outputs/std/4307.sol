pragma solidity ^0.8.0;
contract Array{
    uint[] public data;
    function length() public view returns (uint) {
        return data.length;
    }
    function sum() public view returns (uint) {
        uint sum = 0;
        for (uint a = 0; a < length(); a++) {
          sum += data[a];
        }
        return sum;
    }
    function setElement(uint idx, uint val) public {
        data[idx] = val;
    }
    function getElement(uint idx) public view returns (uint) {
        return data[idx];
    }
}
