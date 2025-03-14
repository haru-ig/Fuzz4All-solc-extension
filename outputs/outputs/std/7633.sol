pragma solidity ^0.8.0;
contract BetterCase6 {
    address[] a;
    function modifies3(address[2] memory b, uint128 x) public {
        b[0] -= x;
    }
}
contract BetterCase8 { }
contract BetterCase11 { }
contract BetterCase13 { }
