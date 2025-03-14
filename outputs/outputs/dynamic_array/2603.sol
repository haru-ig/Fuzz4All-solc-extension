pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod2{
    uint[] _a;
    uint[1] b;
    constructor () public {
        _a.push(1);
        _a.push(1);
        _makeNewArray();
        _addOneUint(_a);
        _addTwoUint(_a);
    }
    function test() public {}
    function _addTwoUint(uint[] memory _a) public view returns(uint) {
        uint len = _a.length;
        require(len >= 2,"Len is invalid!");
        for(uint i = len - 2; i > len - 1; i--)
                _a[i]+= _a[i+1];
        return _a[0];
    }
    function _addOneUint(uint[] memory _a) public view returns(uint) {
        uint len = _a.length;
        require(len <= 1,"Len is invalid!");
        return _a[len];
    }
    function _makeNewArray() public {
        uint[] memory newArray = new uint[](2);
        newArray.push(1);
        newArray.push(1);
    }
}
