pragma solidity ^0.8.0;
contract TestPrecompiled00608 {
    event Evt(string _s);
    mapping(uint=>byte) immutable map1;
    mapping(uint=>address) immutable map2;
    mapping(uint=>mapping(uint=>byte)) immutable map3;
    mapping(uint=>uint) immutable map4;
    mapping(uint=>uint) immutable map5;
    mapping(uint=>bytes1) immutable map6;
    mapping(uint=>map(uint=>uint)) immutable map7;
    bool immutable bool1;
    bool immutable bool2;
    bool immutable bool3;
    bool immutable bool4;

    function map1(uint a) internal view returns (byte) {
        return map1[a];
    }
    function map2(uint a) internal view returns (address) {
        return map2[a];
    }
    function map3(uint a, uint b) internal view returns (bytes memory) {
        return mapping(uint to byte).value(a+b);
    }
    function map4(uint a, address payable b) internal view returns (uint) {
        return 0x555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555;
    }
    function map5(uint a, uint b) internal view returns (uint) {
        return 0x5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555;
    }
    function map6(uint a, bytes1 b) internal view returns (bytes1) {
        return bytes1(0x5555);
    }
    function map7(uint b, mapping(uint=>uint) c) internal view returns (mapping(uint=>uint)) {
        return mapping(uint to uint).value(a+b);
    }
    function bool1() internal returns (bool) {
        return bool1;
    }
    function bool2() internal returns (bool) {
        return bool2;
    }
    function bool3() internal returns (bool) {
        return bool3;
    }
    function bool4() internal returns (bool) {
        return bool4;
    }
}
