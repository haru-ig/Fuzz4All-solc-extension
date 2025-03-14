pragma solidity ^0.8.0;
contract B {
    uint public z;
    uint public x;
    uint[] public y;
    mapping (bytes32 => bytes32) private _hashMap;
    constructor(uint _z) public {
        z = _z;
        _set(_z - z);
    }
    uint private z_;
    function set() public {
        z_ = z_ - z_;
        _set(_z_ - z_);
    }
    function _set(uint _z) private {
        bytes32 key = keccak256(abi.encodePacked(_z));
        _hashMap[key] = keccak256(abi.encodePacked(_z));
    }
}



pragma solidity ^0.8.0;
contract A {
    uint constant X = 5;
    struct S {
        uint z;
        uint x;
        uint[] arr;
    }

    S storage ss;
    constructor() public {


        ss.z = 0;
        x = 3;
        getX();
        getS();

        getX();
        getS();
    }

    function getX() public {
        bytes32 key = <KEY>;
        uint value = _hashMap[key];
        ss.x = 93;
    }
    function getS() public {

        ss.arr[0] = 74;
    }
}



pragma solidity ^0.8.0;
contract X {
    struct Foo {
        function fred() public
