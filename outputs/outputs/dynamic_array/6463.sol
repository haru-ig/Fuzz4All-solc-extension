pragma solidity ^0.8.0;
import './i.sol';
contract c {
    uint256 arr[6];
    uint256 arry[10];
    uint256 arrz[1];
    uint16 arrx[10];
    uint16 arryx[1];
    uint16 arrzx[1];
    uint[] myarray;
    uint[] myarray1;
    uint256[] myarray2;
    uint256[] myarray21;
    i i1;
    bytes10[] _bytes10arry;
    bytes12[] _bytes12arry;
    bytes[] mybytesarry;
    address[] myaddressarry;
    uint8[] myuint8arry;
    uint16[] myuint16arry;
    address[10] myaddressarry2;
    uint256[10] myuint256arry;
    uint16[10] myuint16arry2;

    function x() public{


        uint16 m1 = m();
        uint[] memory myarr;
        myarr = new uint[](256);
    }

    function x(uint i, uint j) public{

    }

    function x(uint[] memory a) public{

    }

    function foo() public returns (address){
        return i1.m();
    }

    function foo1(uint[] memory b) public returns (address){
        return i1.m();
    }

    function foo2(address[] memory c) public returns (address){
        return i1.m();
    }

    function foo3(address[10] memory d) public returns (address){
        return i1.m();
    }

    function foo4(uint256[] memory e) public returns (address){
        return i1.m();
    }

    function foo5(uint16[] memory f) public returns (address){
        return i1.m();
    }

    function foo6(address(address) memory g) public returns (address){
        return i1.m();
    }

    function foo7(address[1] memory h) public returns (address){
        return i1.m();
    }

    function foo8(address[] memory k) public returns (address){
        return i1.m();
    }

    function foo9(address[] memory l) public returns (address){
        return i1.m();
    }
