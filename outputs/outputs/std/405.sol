pragma solidity ^0.8.0;
contract Test1 is Test {
    function test() public pure override returns (uint8) {
        return 20;
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    uint public x = 5;
    uint[32] memory public memory_x;
    function test() public pure override returns (uint8) {
        return (x >= memory_x + 18 && x == uint16(memory_x + 18));
    }
}
