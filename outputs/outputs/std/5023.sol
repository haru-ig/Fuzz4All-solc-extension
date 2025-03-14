pragma solidity ^0.8.0;
contract Immutable {
    uint256[] public staticArr;
    uint256 public staticArr2;
    function getArrLength() public view returns(uint256) {
        return staticArr.length;
    }
    function staticVarSet(){

        staticArr = [1, 2, 3];
    }
}
