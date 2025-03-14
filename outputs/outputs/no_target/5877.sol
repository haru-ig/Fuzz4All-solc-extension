pragma solidity ^0.8.0;
contract C1 {
    uint constant x = 0;
    uint public constant y = 0;
    uint public x_orig = 0;
    uint public y_orig = 0;
    uint[49] zs;
    function a() public payable {
        uint[] memory aa;
        string[5] saa;
        aa;
        aa = new uint[](100);
        saa;
        aa = new uint[](1000);
        aa;
    }
    function b() public payable {
        uint[][] memory arrayaa;
        string[] memory saa;
        aa;
        aa = new uint[][](1000);
        saa;
        aa = new uint[][](1000);
        aa;
    }
    function c() public payable {
        uint[][][] memory arrayarrayaa;
        string[][] memory saa;
        aa;
        aa = new uint[][][](1000);
        saa;
        aa = new uint[][][](1000);
        aa;
    }
}
