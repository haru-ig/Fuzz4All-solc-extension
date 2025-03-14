pragma solidity ^0.8.0;
contract C {
    struct X { uint256[] v; } public v2;
    uint256[][] [] public v3;
    function multiply() public payable {
        v3[0][0][0] *=1;
        v3[0][0][0]->v[0][0] *=1;
        X memory x = X({ v: [v2] });
        x.v[0][0] *=1;
        v2 *=1;
        v3 = x.v;
    }
}
