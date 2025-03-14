pragma solidity ^0.8.0;
contract MutatedBlock2Mutation82 {
    uint internal _var = 0;
    uint internal _another = 0;
    uint internal _yetanother = 0;
    uint internal _zanzoth = 0;
    uint internal _ohno = 0;
    function test1() public returns (uint) {
        _var = _var*_var + _var*_var + _var*_var;
        return _var*_var;
    }
    function test2() public returns (uint) {
        _var = _var*_var + _var*_var + _var*_var + _var*_var + _var*_var;
        return _var*_var*_var;
    }
    function test3() public returns (uint) {
        _var = _var*_var + _var*_var + _var*_var + _var*_var + _var*_var + _var*_var*_var;_var*_var*_var;
        return _var*_var*_var*_var;_var*_var*_var*_var*_var;_var*_var*_var*_var;_var*_var*_var*_var;_var*_var*_var*_var;_var*_var*_var*_var;_var*_var*_var*_var*_var;
    }
    function test4() public returns (uint) {
        uint local = _var*_var + _var*_var + _var*_var + _var*_var + _var*_var;
        function func() internal {
            emit Log(uint(now-block.timestamp));
        }
        func();
        return func();
    }
    function test5() public returns (uint) {
        uint local = _var*_var + _var*_var + _var*_var + _var*_var + _var*_var + _another;
        function func() internal returns (uint a) {
            emit Log(uint(now-block.timestamp));
        }
        func();
        return _var*_var;
    }
    receive() external payable {
        _var = _var*_var + _var*_var + _var*_var + _var
