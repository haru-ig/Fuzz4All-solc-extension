pragma solidity ^0.8.0;
contract Array14_solidiarity {
    uint256[] mutabil;
    uint256[] public mim;
    uint256[] public arr;
    uint256[] mutabil_mim;
    uint256[] mutabil_arr;
    uint256[] mutabil_arr2;
    uint256[] mutabil_arr3;
    uint256[] public mim2;
    uint256[] public ave;
    uint256[] mutabil2;
    modifier Mutate(uint256[] memory _a, uint256[] memory _mim,uint256[] memory _arr) {

        return arr == _arr;
    }
    modifier Mutate2(uint256[] memory _a) {
        return ave == _a;
    }
    modifier Mutate3(uint256[] memory _a) {
        return mim2 == _a;
    }
}
