pragma solidity ^0.8.0;
contract Array{
    uint[10][10] memory _myArray;
    function set2(uint256 _a, uint256 _b) public {
        _myArray[_a][_b] = _b;
    }

    function get2(uint256 _a, uint256 _b) public view returns(uint256 _c){
        _c = _myArray[_a][_b];
    }
}
