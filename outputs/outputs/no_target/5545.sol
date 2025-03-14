pragma solidity ^0.8.0;
contract O {
    mapping(address=>uint) public y;
    function f() public returns (uint) {
        uint a = 1;
        uint b = ((a)-3);
        a = 3;
        return (b);
    }
}

pragma solidity ^0.8.0;
contract O {
    uint c = 0;
    function f() public returns (uint) {
        uint x = c;
        x = 2;
        return (x);
    }
}
