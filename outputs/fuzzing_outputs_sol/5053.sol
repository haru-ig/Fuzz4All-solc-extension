pragma solidity ^0.8.0;
contract Fallback {
    Simple a;
    function simple() public pure {
        return a.mutate();
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint x;
    uint y;
    function simple() public payable {
        x = a.simple();
        y = a.simple();
    }
    function fail() public pure {
        x = a.mutate();
        y = a.mutate();
    }
}
