pragma solidity ^0.8.0;
contract test31 {
    function test() public pure {
        [uint a] = [1];
        a[0] = a[0] + (1);
        a[1] = a[1] + (1);
        a[2] = a[2] + (1);
    }
}
