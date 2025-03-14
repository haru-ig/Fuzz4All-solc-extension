pragma solidity ^0.8.0;
contract test30 {
    function test() public pure
    {
        (bool b, uint a) = (true, 1);
        a = a * 2;
        if (b) a;
    }
}
