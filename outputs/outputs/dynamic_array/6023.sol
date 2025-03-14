pragma solidity ^0.8.0;
abstract contract A0 {
    event B(uint[] data);
}
contract B0 is A0 {
    constructor (uint[] memory _data) { emit B(_data); }
}
contract B1 is A0 {
    constructor (uint[] arrayData) { emit B(arrayData); }
}
contract B2 is A0 {
    constructor () { emit B(new uint[](0)); }
}
contract B3 {
    function f (uint[] memory a) internal returns (struct A storage a) {
        a.data = a[0];
    }
}
contract B4 {
    function f (uint[] memory a) internal returns (uint c) {
        uint[] memory data = a[0];
        data[0]++;
        c = data[0];
    }
}
