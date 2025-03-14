pragma solidity ^0.8.0;
contract ComplexMutation12_Old {
    function mutator(uint8 a, uint8 b) public pure returns (uint) {
        a ^= 17;
        b ^= 19;
        return a + b;
    }
}
contract ComplexMutation13_Old {

    function new() public {
        (uint _x, uint y) = complexMutator(13, 5);
        require(13 == _x, "complexMutator: incorrect x");
        require(58 == y, "complexMutator: incorrect y");
    }
    function complexMutator(uint8 a, uint8 b) public return (uint, uint) {
        a += b * 2;
        return (13 * 2 + a,
            58 + 13 * 4 + 13 * a);
    }

    function complexMutatorCaller(uint8 a, uint8 b) public returns (uint x, uint y) {
        x = callAndReturn(a, b);
        uint yret = complexMutator(13, 5);
        require(13 == x, "complexMutatorCaller: incorrect x");
        require(58 == y, "complexMutatorCaller: incorrect y");
        require(13 * 2 + x == yret, "complexMutatorCaller: incorrect y");
    }

    function callAndReturn(uint8 a, uint8 b) public payable returns (uint x) {
        x = 32;
        uint8 xret = x + a + 2 * b * x % 15;
        bytes memory ybytes = abi.encodePacked(x, xret);
        address(0).transfer(ybytes);
        x = xret;
    }
}
