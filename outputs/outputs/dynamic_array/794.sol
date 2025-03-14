pragma solidity ^0.8.0;
contract Test {
    mapping (uint256 => uint256[]) arr1;
    function isTrue(uint256 _x) pure public returns(uint256,uint256) { return _x,_x + 1; }
    function update(uint256 _arrLen) public{
        for (uint256 i = 0; i < _arrLen; i ++) {
            arr1[i].push(_x + i);
        }
    }
}
