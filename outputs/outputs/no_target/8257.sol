pragma solidity ^0.8.0;
uint constant ONE = 1;
contract Mutated2b {
    function test() public pure {
        if (ONE < 3) {
            assert(ONE < 3);
        }
    }
}
contract Mutated2a {
    uint private constant ONE = 1;
}
interface Mutated0c {
    function test() public pure;
}
contract Mutated0b {
    function test() public pure {
        contract Mutated1 c = Mutated2b();
        require(ONE < 3);
        bytes memory memory1 = abi.encodePacked(Mutated1(ONE));
        bytes memory memory2 = abi.encodePacked(Mutated2(ONE), Mutated0());
        bytes memory memory3 = abi.encodePacked(Mutated2);
        bytes memory memory4 = abi.encodePacked(Mutated1(32));
    }
}
