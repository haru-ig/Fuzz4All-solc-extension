pragma solidity ^0.8.0;
contract G5 {
    mapping(uint32 => uint[]) _data;
    modifier G5modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    constructor() public G5modifier(1)  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}

pragma solidity ^0.8.0;
contract G6 {
    mapping(uint32 => uint[]) _data;
    modifier G6modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    constructor() public G6modifier(2)  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}

pragma solidity ^0.8.0;
contract G7 {
    mapping(uint32 => uint[]) _data;
    modifier G7modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    modifier G7modifier2(uint32 n) {
        _data[n] = new uint[](1);
        _;
    }
    modifier G7modifier3(uint32 n) {
        _data[n][0] = 8;
        _;
    }
    constructor() public G7modifier(0)  G7modifier2(1)  G7modifier3(2)  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}
