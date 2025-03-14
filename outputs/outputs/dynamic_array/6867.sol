pragma solidity ^0.8.0;
contract Test {
    uint _data;
    constructor(uint _data) {
        this._data = _data;
    }
    function test() view public returns (uint) {
        return this._data;
    }
}

pragma solidity ^0.8.0;
contract Test {
    struct MyStruct {
        uint256 a;
        uint256 b;
    }

    uint256 a;

    constructor(bool _param, uint256 _a) {
        a = _a;
    }

    function test(MyStruct memory _param) public returns (uint256) {
        return _param.a + _param.b;
    }
}
