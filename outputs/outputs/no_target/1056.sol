pragma solidity ^0.8.0;
contract SemanticMutation21
{
    function f () public pure {
        uint256 x = a() + b();
        emit (emitted(), value, value + 2);
        (x, x) = (x + 1, 2);
    }
    function g () public pure {
        uint x = b() + c(a());
    }
    function h (uint x) public pure returns (uint)
    {
        (x + 1.0, x + 1.0 / 2.0, x + 1.0 / 4.0, x + 1 / 0, x + 1 / 0.5) = (x + 1.0, x + 1.0/0.0, x + 1.0/0.5, x + 1 / 0 / 2.0, x + 1 / 0 / 5.0 );
    }
    function i() public pure {
        uint256 xx = h() + h();
        string memory str = '10';
        str.length = 4;
        (xx, xx) = (xx + 1.0, xx + 1.0 / 5.0);
    }
}
