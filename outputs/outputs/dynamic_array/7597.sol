pragma solidity ^0.8.0;
contract Test13 {
    uint A;
    function a() public {
        A = 20;
        A++;
    }
    function b() public {
        if (A!= 21)
            revert();
    }
}

pragma solidity ^0.8.0;

library Math
{
    uint256 internal constant MAXUINT256 = 2**256 - 1;

    function add(uint a, uint b) internal pure returns (uint)
    {

        return a + b;
    }

    function sub(uint a, uint b) internal pure returns (uint)
    {
        return sub(MAXUINT256, a, b);
    }

    function mul(uint a, uint b) internal pure returns (uint)
    {



        if (a == 0) {
            return 0;
        }

        uint c = a * b;
        require(c / a == b);

        return c;
    }

    function div(uint a, uint b) internal pure returns (uint)
    {



        if (b == 0) {
            return 0;
        }

        return a / b;
    }

    function mod(uint a, uint b) internal pure returns (uint)
    {
        require(b!= 0);

        return a % b;
    }

    function sub(uint a, uint b) internal pure returns (uint)
    {
        require(b <= a);

        return a - b;
    }
}
contract Test13 {
    uint[] public array;
    function a() public {
        a[1].length = 5;
        a.length += 1;
    }
}

pragma solidity ^0.8.0;

contract Test13
{
    function test() public {
        uint[1] memory a;
    }

    function test2() public {
        uint[1][4] memory
