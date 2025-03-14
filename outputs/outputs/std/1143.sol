pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Array2 {


    function simpleChangeFunction(uint8 a) public pure {

        a;
        a++;
        a--;
        a*3;
        a/2;

    }


    function functionSignatureChangeFunction(uint8 a) public pure returns (uint8) {

        uint256 b;
        return (a, b);

    }


    function functionSignatureChangeReturnsFunction(uint8 a) public pure returns (uint8, uint256) {

        uint256 b;
        return (a, b);

    }


    function functionSignatureChangeReturnsAddressFunction(uint8 a) public pure returns (address) {

        bytes32 b;
        uint256 c;
        (, b) = functionSignatureChangeReturnsFunction(a);
        (c, b) = functionSignatureChangeReturnsBytesFunction(a);
        (, b) = functionSignatureChangeReturnsTupleFunction(a);

        (, b) = functionSignatureChangeReturnsAddressFunction(a);
        (, b) = functionSignatureChangeReturnsTupleAddressFunction(a);

        return address(b);

    }


    function singleParameterChangeFunction(uint8 a) public pure returns (uint8, uint256) {
        return (a, uint8(a));
    }


    function multipleParametersChangeFunction(uint8 a, uint256 b) public pure returns (uint8) {
        return (a, b);
    }


    function multipleParametersChangeWithChangeFunction(uint8 a, uint8 b) public pure returns (uint8) {
        return (a, b);
    }


    function multipleParametersChangeReturn(uint8 a, uint256 b) public pure returns (uint16, uint8, uint256) {
        return (a, b, b);
    }


    function emptyFunction() public pure {}


    function twoParametersFunction(uint8 a, uint8 b) public pure {}


    function threeParametersFunction(uint8 a, uint8 b, uint8 c) public pure {}


    function fourParametersFunction(uint8 a, uint8 b, uint8 c, uint8 d) public pure {}

    /* A function which makes a minimal change (or more) to the function's signature.
