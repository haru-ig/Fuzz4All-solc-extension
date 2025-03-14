pragma solidity ^0.8.0;
contract Test41 {
    uint[24] _storage;
    uint[10][][][] _arrB;
    uint[3] z;
    uint y;
    function logEvent(uint _x) public {
        require(_storage == _arrB[_storage][0][0][0][0] && uint(_x) == _storage);
    }
    modifier check() {
        y++;
        _;
    }
    function logEvent1() private {
        z=1;
        z[0]=1;
        _arrB[_storage][0][0][0][0]=1;
        uint y = _arrB[_storage][0][0][0][0];
        arrayTest(uint[1][1]y,_arrB);
    }
    function arrayTest(uint[1][1] y, uint[1][1][] arrB) public {
        require(uint(uint[](arrB)[0]) == _storage && uint(uint([y])[0]) == _storage);
        require(uint(uint[](arrB)[1]) == _storage && uint(uint([y])[1]) == _storage);
        require(uint(uint[](arrB)[2]) == _storage && uint(uint([y])[2]) == _storage);
    }
}
