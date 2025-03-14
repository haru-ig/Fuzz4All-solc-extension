pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function f1(Mod mod) private {
        mod.update(x);
        mod.get(x);
    }
    uint constant x = 1 << 168;
}
