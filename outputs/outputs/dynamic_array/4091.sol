pragma solidity ^0.8.0;
contract C {
    uint8[] private _data1;
    uint public _data2;
    constructor() payable {
        _data1.push(0);
        _data1.push(0);
        for(uint i = 0; i < _data1.length - 1; i++){
            _data1[i] = i;
        }
        _data2 = 1;
    }
    function f() private {
        _data2 = 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor () {
        uint[] memory foo = new uint[](1);
        foo[0] = 2;
        foo.push(3);
        foo[foo.length] = foo.length + 1;
        for(uint j = 0; j < foo.length; j++){
            foo[j] = 5*j - 1;
        }
        assert(foo[foo.length - 2] == foo.length - 2);
        assert(foo[foo.length - 1] == foo.length);
        assert(foo.length == 3);
        assert(foo[foo.length - 3] == 3);
    }
}
