pragma solidity ^0.8.0;
contract Test36 {
    function mutated6() public {
        uint[] memory x = new uint[](25);
        x[0]++;
    }
}

pragma solidity ^0.8.0;
contract Test37 {
    function mutated8(uint a) public {
        Test37 memory x1;
        uint x2;
        x1.x = new uint[](4);
        uint x3;
        x2 = x1.x[3];
    }
}
