pragma solidity ^0.8.0;
contract Test71d8 {
    struct State {
        uint flag;
        uint flag2;
        uint flag3;
    }
    uint flag;
    uint flag2;
    uint flag3;
    uint a;
    uint b;
    uint c;
    constructor() public {
        a;
        b;
        c;
        State memory s;
        a;
        b;
        c;
        a;
        b;
        c;
        flag;
    }
    function bar() public {
        a;
        b;
        c;
        State memory s;
        a;
        b;
        c;
        flag;
        flag2;
        flag3;
        a;
        b;
        c;
        a;
        b;
        c;
    }
}
contract Test71 {

    uint[] public array;

   uint256 private _storage;

    uint public a;
    uint public b;
    uint public c;
    uint myArray1_[10];
    uint myArray2_;

    function Test71(uint numElements, uint256 storageSize) public view {}

    constructor(uint numElements, uint256 storageSize) public view {}

    function bar() public view {}

    function test(uint[] storage arr) public view {}

    function test2(uint[] storage arr) public view {}

    function setArray2(uint[] memory arr) public {}

    function getArray2() public view returns (uint[] memory) { return array; }


    modifier requireArrayLength(uint length) {
        assert(arr.length == length);
        _;
    }
