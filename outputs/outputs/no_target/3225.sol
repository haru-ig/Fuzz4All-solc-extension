pragma solidity ^0.8.0;
contract eleven {
    function a() public pure returns(uint128)
    {
        return uint42(7989692021312005729);
    }
    function b() public pure returns(uint)
    {
        return bytes(20).length;
    }
    function c() public pure returns(bytes32)
    {
        return toBytes32("The quick brown fox jumps over the lazy dog");
    }
    function d() public pure returns(address)
    {
        return address(1);
    }
    function e() public pure returns(bytes1)
    {
        return "X".bytes1;
    }
    function f() public pure returns(bytes1)
    {
        return "X".bytes2;
    }
    function g() public pure returns(bytes1)
    {
        return "X".bytes3;
    }
    function h() public pure returns(bytes1)
    {
        unchecked {
            return "X".bytes4;
        }
    }

    function i() public pure returns(bytes1)
    {
        if(true) return 65;
        return 1;
    }

    function j() public pure returns(bool)
    {
        return false;
    }

    function k() public pure returns(address)
    {
        address a;
        if (true && false) return a;
        uint a_ = uint(a);
        return a;
    }
}
