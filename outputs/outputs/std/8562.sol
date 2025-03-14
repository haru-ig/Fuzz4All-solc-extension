pragma solidity ^0.8.0;

struct Say
{
    uint8 a;
    uint8 b;
    uint8 c;
}
contract Say
{
    uint8 a;
    uint32 b;
    uint8 c;
    function say() public pure returns (Say s) {
        if (b < 700000) {
            return (Say(1, 2, 3));
        } else if (b >= 800000) {
            return (Say(1, 3, 4));
        } else if (b >= 900000) {
            return (Say(0, 0, 0));
        }
    }
}
contract Test
{
    function test() public {
        Say s = Say(0x420000000000000000
