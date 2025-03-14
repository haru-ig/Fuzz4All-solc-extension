pragma solidity ^0.8.0;
import "./test/Test.sol";
contract Test1 is Test {
    bytes1[12] bytesData;
    bool[12] boolData;
    uint256[12] uint256Data;
    function f() public {
        uint256[] mem_1 = uint256[11]();
        unchecked { mem_1[0] = 0x00; }
        uint256[] array_7 = uint256[12]();
        uint256 result;
        unchecked { result=array_7[0]; }
    }
    function f1(uint256 value) public {
        uint256[] mem_3 = uint256[12]();
        unchecked { mem_3[0] = 42; }
        uint256[] mem_8 = mem_3;
        unchecked { mem_8[11] = 0xdeadbeeffdbee4200000000000000000000000000000000000000000000000000; }
    }
    function f2() public view {
        uint256[] mem_9 = mem_3;
        unchecked { result=mem_9[0]; }
    }
    function f3(address i, bytes32 f) public {
        address[] mem_10 = address[3]();
        unchecked { mem_10[0] = i; }
        address[] mem_17 = address[3]();
        uint256 result;
        unchecked { result=mem_10[1]; }
    }
    function f4(address i) public view returns (bytes32) {
        address[] mem_19 = address[3]();
        unchecked { result=mem_19[0]; }
    }
    function f5(address[] memory i, bytes32[] memory f) public {
        address[] mem_20 = i;
        uint256 result;
        unchecked { result=mem_20[0]; }
    }
    function f6(address[] memory i) public view returns (bytes32[] memory) {
        return i;
    }
    function f7(address[] memory mem_25, uint256[] memory mem_26) public {}
    function f8(address[] memory i, uint256 value) public {
        uint256[] mem_27 = uint256[3]();
        unchecked { mem_27[0] = 0x34; }
        uint2
