pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract SimpleInline {
    function setB(uint256 _b) public {
        b = _b;
        c = _b;
    }

    function getB() public pure returns(uint256){
        return b;
    }
    function getC() public pure returns(uint256){
        return c;
    }
    function incrementB(uint256 increment) public {
        b += increment;
        c += increment;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample68 {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    function setAB(uint256 _b) public {
        a = _b;
        b = _b;
    }

    function getAB() public pure returns(uint256){
        return a;
    }
    function getAB() public pure returns(uint256){
        return b;
    }
    function getAB() public pure returns(uint256){
        return c;
    }
    function incrementAB(uint256 increment) public {
        a += increment;
        b += increment;
        c += increment;
    }
    function incrementC(uint256 increment) public {
        c += increment;
    }
}
