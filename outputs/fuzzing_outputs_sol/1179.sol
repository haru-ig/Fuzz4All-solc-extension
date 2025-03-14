pragma solidity ^0.8.0;
contract SemanticEquivalence3 {
    struct Data { uint x; uint y; }
    Data internal data;
    constructor() { data = Data(7, 13);}
    function run() public returns (Data memory other) {
        uint[] memory a = new uint[](0);
        for (uint i = 0; i < 1; i++) {
            uint[] memory b = new uint[](0);
            Data[] memory c = new Data[](0);
        }
        other = data;
    }
    function run2() {
        uint[] memory a = new uint[](0);
        for (uint i = 0; i < 1; i++) {
            uint[] memory b = new uint[](0);
            Data[] memory c = new Data[](0);
        }
        data = data;
    }
}
contract SemanticEquivalence4 {
    struct Data { uint x; }
    Data internal data;
    constructor() {}
    function run() returns (Data memory other) {
        address a;
        other = data;
    }
    function run2() {
        address a;
        data = data;
    }
}
address payable f;
mapping(uint256 => bool) map;
function func() external {
    map[address(a)] = true;
    f.sendValue(3);
    map[address(a)] = true;
}
