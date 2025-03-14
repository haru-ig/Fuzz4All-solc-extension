pragma solidity ^0.8.0;
contract Test52Mutant {
    uint[3] memory x;
    function f() public returns (uint[3] memory){
        uint _x;
        uint[3] memory tmp;
        for(uint i=0;i<5;i++){
           x[i] = 123;
        }
        _x = x[2] + x[4];
        return _x;
    }
}
contract Test53Mutant {
    uint _x;
    function f() public returns (uint){
        _x = x - 5;
        return _x;
    }
}
contract Test54Mutant {
    uint _x;
    function f() public returns (uint){
        uint[] memory x = new uint[](3);
        x[2] = 123;
        x[2] = 234;
        x[2] = 345;
        _x = x[2] - x[0];
        return _x;
    }
}
