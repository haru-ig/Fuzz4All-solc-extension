pragma solidity ^0.8.0;
contract MutantArithmaticSecondary
{

    function mutantArithmaticOriginal() external
    {
        a = 865 days; b = 424 days; c = 3 hours; d = 1675 hours;
        e = 40 days; f = toFixed(c, 122); g = toFixed(b, 341);

        o = a % b; p = (a * b) % c; q = (a / b) % d;
        s = f % e; n = a % b; z = a % d % e; j = (a % d) % e;
        m = bytes((c * e) / 3);
        c++; if (c >= 32) {c = 659}

        j = (a % c) % b; q = (a % c) % b; f = (a % b << a) % c % d % e % g;
    }

    function add(uint256 t) public pure returns (uint256)
    {
        return t + (uint256(-t) >> 112);
    }
    function mul(uint256 t) public pure returns (uint256)
    {
        uint256 c = (uint256(t) + uint256(-t) >> 112
