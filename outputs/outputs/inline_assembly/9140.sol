pragma solidity ^0.8.0;
contract C{
    function getResult(uint256 x, uint256 y) public view returns (uint256) {
        x = x + ((x / 10) * (y / 10) + 10);
        x = (x + 10) * 10;
        x = x * 100 + 10;
        x = x * (x * x + x + 10) + x + 1;
        x = 0;
        return (x);
    }
}
contract C{
    function getResult(uint256 x, uint y) public view returns (uint) {
        uint256 z = (((x * 100000) + y) + x);
        z = (((z & 1507750309924593) * (z >> 18) + (z & 655350052) + z) << 32) + 5934929879948070;
        z = ((((z / 100000) & 15) * (z >> 18)) + ((z & 654540408) * (z >> 18)))) + 15;
        return (z);
    }
}
