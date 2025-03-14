pragma solidity ^0.8.0;
contract Mutable2 {
    uint[] arr;
    mapping (uint=>uint) internal _numA;
    string[] str;
    constructor() public {};
    function f() public {
        _numA[1] = 1;
    }
    function g() public {
        arr.push(1);
    }
    function h() public {
        _numA[1] = 1;
        delete _numA[1];
    }
    function i() public {
        delete arr[1];
    }
    function j() public {
        str[1] = "Hey";
        delete str[1];
    }
    function k() public {
        _bts.push(1);
    }
    function l() public {
        uint[4] memory _bytes;
        _bytes[0] = 100;
        _numA[1] = 1;
    }
    function m() public {
        uint[5] memory _bytes;
        _bytes[1] = 1;
        _bytes[2] = 3;
        _bytes[3] = 10;
        _bytes[4] = 15;
        uint[5][5] memory _bytes2;
        _bytes2[1][1] = 2;
        _bytes2[1][5] = 2;
        _bytes2[2][14] = 2;
        string[4] memory _bytes3;
        _bytes3[1] = "Hello";
        string memory s;
        _numA[2] = 3;
    }
    function n() public {
        require(0, "hi")
        delete _bts[1];
    }
    function o() public {
        require(0, "hi")
        string memory s = "Hi";
        delete s[1];
    }
    function p() public {
        require(0, "hi")
        string memory s = "";
        delete str[1];
      }
    function q() public {
        require(0, 1);
        bytes memory bytes = "Hello";
        delete bytes[1];
    }
    function r() public {
        require(1, "Bye");
        delete _numA[2];
    }
    function s() public {
        require(1, 1);
        address a;
        delete a;
    }
    function t() public {
        require(0, 1, "bye");
        delete _numA[2];
    }
    function u() public {
        require(0, 1, 1);
        string memory s;
        delete s;
    }
    function v() public {
        require(0, 1, 1, "bye");
        delete _numA[2];
    }
    function w() public {
        array memory bytes3 = [
