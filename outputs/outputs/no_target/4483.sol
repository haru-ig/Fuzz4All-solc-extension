pragma solidity ^0.8.0;
contract Test {
    function greediTest() public returns (uint g) {
        (uint a) = b;
        (uint b) = a;
        unchecked {
            a++;
            b--;
        }
        g = a;
    }
}
