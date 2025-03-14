pragma solidity ^0.8.0;
contract Test {
    uint256 constant x = 1;
    function test() public pure {
        assert(x >= 1);
        bool y = x >= 2;
    <selection>switch x{
        case 1:
            aA();
            break;
    }*/
    function aA() public pure {
    }
}
