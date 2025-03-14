pragma solidity ^0.8.0;
contract Mutater08999 {
    uint160 public immutable _x;
    constructor(uint160 _x) {
        _x;
    }
    function add(uint160 x) internal view returns (uint160) {
        require(x <= 2**32, "Not enough gas");
        return (x + 2**16);
    }
    fallback(uint160 _y) external{
        uint256 x = _y / 3 + 33;
        require(x == _y, "Mutter08");

    }
}



contract CallA123
{
    uint a123 = 0;


    function mutater() public {
        a123 = add(a123, 1);
        require(a123 <= 2**32, "Mutter");
        a123 = add(a123, 2);
    }
}



contract FallbackA123
{

    function mutater() public payable {
        a123 = add(a1
