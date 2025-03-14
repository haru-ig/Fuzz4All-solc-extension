pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory a;
        a[0] = 0;
        a[1] = 42;
        a = new uint256[](3);
        a = new uint256[](30);
    }
}







pragma solidity ^0.8.4;


function safeMul(uint256 mul1, uint256 mul2) internal pure returns (uint256) {
    unchecked {
        uint256 c = mul1 * mul2;
        require(c / mul1 == mul2, "Math: multiplication overflow");

        return c;
    }
}


function safeDiv(uint256 dividend, uint256 divisor) internal pure returns (uint256) {
    unchecked {

        require(divisor!= 0, "Math: division by zero");
        uint256 c = dividend / divisor;

        return c;
    }
}


function safeAdd(uint256 addend1, uint256 addend2) internal pure returns (uint256) {
    unchecked {
        uint256 c = addend1 + addend2;
