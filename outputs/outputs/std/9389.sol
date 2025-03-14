pragma solidity ^0.8.0;
contract Mutate7
{
    uint256 a;
    uint256 b;
    uint256 _x;
    function xSet() public {
        a += 1;
        a += 1;
        _x -= b;
        _x -= b;
    }

    function yGet() public view returns (uint256) {
        a += 2;
        a += 2;
        a += 1;
        return _x;
    }

    function set() public {
        b += 3;
        b += 3;
        b += 2;
    }
}



pragma solidity ^0.8.0;
contract Remainder
{

}


pragma solidity ^0.8.0;
contract DigitalNumberOf
{
    function digitalNumbers(uint256 x) public pure returns(uint8 digitCount) {
        uint256 temp = uint256(x);
        while (temp % 10 == 0) {
            digitCount += 1;
            temp /= 10;
        }
    }
}
