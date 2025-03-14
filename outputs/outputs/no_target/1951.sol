pragma solidity ^0.8.0;
contract EquivalentMutated {
    uint x;
    function f() public {
        x = x+1;
    }
}
pragma solidity ^0.8.0;
contract EquivalentMutated2 {
    uint x;
    function f() public {
        x = x+1;
    }
}
