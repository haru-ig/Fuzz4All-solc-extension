pragma solidity ^0.8.0;
contract S2 {
    function mutated() public view
    {
        bar[0] += 10;
        bak[0] -= 20;
    }
}
