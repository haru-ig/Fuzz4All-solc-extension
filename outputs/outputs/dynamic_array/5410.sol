pragma solidity ^0.8.0;
contract Test36 {
    function mutated5() public {
    uint[] memory y = new uint[](2);
    y[0] = 1;
    y[1] = 3;
    y[0] += 1;
    y[1] -= 1;
    if (y[0]!= y[1]) {
        return;
    }
    }
}
