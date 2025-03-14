pragma solidity ^0.8.0;
contract semanticalyequivalent13
{
    uint public x;
    uint public y;
    function test()public {
        x = 1;
        x += 1;
        x -= 1;
        x *= 3;
        x /= 3;
        x %= 3;
        x += 5;
        x &= 5;
        x ^= 5;
        x |= 5;
        x <<= 5;
        x >>= 5;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent14
{
    uint public x;
    uint public y;
    function test()public pure {
        x = 1;
        if (x == 1) {
            x += 1;
            x -= 1;
            x *= 3;
            x /= 3;
            x %= 3;
            x += 5;
            x &= 5;
            x ^= 5;
            x |= 5;
            x <<= 5;
            x >>= 5;
        }
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent15
{
    uint public x;
    uint public y;
    function test()internal pure {
        x = 1;
        if (x == 1) {
            x += 1;
            x -= 1;
            x *= 3;
            x /= 3;
            x %= 3;
            x += 5;
            x &= 5;
            x ^= 5;
            x |= 5;
            x <<= 5;
            x >>= 5;
        }
    }
}
contract semanticallyequivalent16
{
    uint public x;
    uint public y;
    uint private privint;
    function test(uint p_num) public pure {
        privint = p_num;
    }
    function test2() public pure returns(uint256 num) {
        num = uint256(x);
    }
    function test2_1() public pure returns(uint) {
        return uint(x);
    }
    function test3() public pure returns(uint[3] memory memory) {
        y;
        return [10, 20, 30];
    }
    function test4() public pure returns(uint[1] memory memory) {
        uint[1] memory memory var1;
        return var1;
    }
    function test5() public view returns(uint) {
        return uint(x);
    }

    function test6(uint[1] memory memory) public pure {}

    function test7() public pure {
        uint[1] memory memory var1;
