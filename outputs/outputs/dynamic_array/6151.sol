pragma solidity ^0.8.0;
contract Test90007 {
    uint256[] a1;
    uint256[] a2;
    uint256 b2;
    uint256 b1;
    modifier Mutate {
        a1 = new uint256[](1);
        a2 = new uint256[](2);
        a1[0] = b1;
        a2[0] = b1;
        a2[1] = b1;
        b1 = b2;
        b2 = a1[0];
        _;
    }
    function () external Mutate {
    }
    fallback () external {
    }
    event Mutate ();
}
