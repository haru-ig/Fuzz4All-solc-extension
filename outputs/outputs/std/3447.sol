pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract NewInterface {
    Interface[] internal interfaces;
    string internal documentation;

    event Documentation(string prevDocumentation, string newDocumentation);

    event UnsignedIntegers(uint256 prevTotal, uint256 newTotal);
    event UnsignedIntegers2(bool prevNegative, bool newNegative);


    function doSomething() external returns (uint8)  {
        interfaces.push(Interface({}));
        require(interfaces.length!= 0);
        return 42;
    }

    function doSomething(bytes memory) external  {}

    function getDocumentation() public view returns (string memory) {
        return documentation;
    }

    function functionOne() public pure returns (bool) {
        return true;
    }


    function testDocumentationField() public returns (string memory) {
        return documentation;
    }


    function testDocumentationFunction() public {
        Documentation(documentation, "");
    }


    function testDocumentationModifier() public {
        Documentation("", documentation);
    }


    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        if (x > y) {
            return x;
        }
        else {
            return y;
        }
    }

    function lt(uint256 x, uint256 y) internal pure returns (bool) {
        return x < y;
    }

    function ltEq(uint256 x, uint256 y) internal pure returns (bool) {
        return x <= y;
    }

    function eq(uint256 x, uint256 y
