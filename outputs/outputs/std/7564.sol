pragma solidity ^0.8.0;
contract BetterCase7 {
    uint256 internal constant _maxUnsignedInt = 2**255 - 1;
    function betterCase() public pure returns (uint256) {
        return _maxUnsignedInt/3;
    }
    function f(uint256 x) public pure {
        x/2;
    }
    function f() public pure returns (uint256 x) {
        return x/2;
    }
}

pragma solidity ^0.8.0;
contract MyArray is Array, SafeMath
{
    function safeAddArray(MyArray memory a, MyArray memory b) internal pure returns (MyArray memory)
    {
        return addArray(a, b);
    }
    function safeSubArray(MyArray memory a, MyArray memory b) internal pure returns (MyArray memory)
    {
        return subtractArray(a, b);
    }
    function safeMulArray(MyArray memory a, MyArray memory b) internal pure returns (MyArray memory)
    {
        return multiplyArray(a, b);
    }
    function safeDivArray(MyArray memory a, MyArray memory b) internal pure returns (MyArray memory)
    {
        uint256 x = minArray(_maxUnsignedInt + 1, mulArray(_maxUnsignedInt + 1, 0xffffffffffffffff - a.x));
        return divideArray(x, b);
    }
    function safeModArray(MyArray memory a, MyArray memory b) internal pure returns (MyArray memory)
    {
        return remainderArray(a, b);
    }
}
