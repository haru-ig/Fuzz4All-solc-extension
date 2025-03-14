pragma solidity ^0.8.0;
contract Mutate_0001
{
    bytes memory y1;
    bytes memory y2;
    bytes1 x1;
    bytes1 x2;
    function test1() public
    {
        (bytes1 y, bytes1 z) = (y1, y2);
        x1 = y;
        y1 = add(y2, x1);
        x1 = y;
        y2 = add(y1, x2);
        x2 = y;
        y1 = add(y2, y1);
        y2 = add(y1, y2);
        x1 = y;
    }
}
