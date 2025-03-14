pragma solidity ^0.8.0;
contract SemanticMutation9
{
    uint _a;
    uint _b;
    function() public {}
    function() public pure {
        _b;
    }
    function() public pure {
        uint x;
        assembly {
            x := 2
        }
        _a += 2;
        _a = _a + 1;
        _a = _a - 1;
        _a = _a / 1;
        _b = _b + 2;
    }
}
contract SemanticMutation10
{
    uint _a;
    uint _b;
    function() public {
        uint x;
        assembly {
            x := 2
        }
        _b = _b + 2;
        _a += 2;
        _b = _b + 1;
    }
}
contract SemanticMutation11
{
    uint public value;
    function a() public pure {
        if (value + 1 == 2) {

        }
    }
    function b() public pure {
        if (value + 1 == 2) {

        } else if (_a) {

        } else {
            uint32(value) / 2;
        }
    }
    function c1() public pure {
        if (_b) {

        } else if (value + 1 == 2) {

        } else if (value + 2 == 3) {

        }\
    }
    function c2() public pure {
        if (_b) {

        } else if (value + 1 == 2) {

        } else {
            uint(value);
        }
    }
}
contract SemanticMutation12
{
    uint _a;
    uint _b;
    function() public {
        if (_b) {

        } else if (_b) {

        } else if (value**2 == 3) {

        } else {
            uint(value);
        }
    }
}
contract SemanticMutation13
{
    uint public value;
    function a() public pure {
        if (value == value + 2) {

        } else if (_b) {

        } else {
            uint(value);
        }
    }
}
contract SemanticMutation14
{
    uint public value;
    function a() public pure {
        if (_b) {

        } else if ((value**2) / 4 == 5) {

        } else {
            uint(value);
        }
    }
}
contract SemanticMutation15
{
    uint public value;
    function a() public pure {
        uint x = value**2;
        uint y = (value**2) / 3;
        uint z = 2 / value;
