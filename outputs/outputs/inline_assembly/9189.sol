pragma solidity ^0.8.0;
contract B {
    uint[] storage _a = new uint[](2);

    function f (uint[]) public pure returns (uint){
        uint result = 0;
        for (uint i = 0; i < _a.length; i++){
            result += _a[i];
        }
        return result;
    }
}
