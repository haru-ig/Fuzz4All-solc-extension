pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6E is SemanticSolidityArrayAbiConversionTests6D {
    function test(uint length) public pure  {
        uint[] memory foo = new uint[](length);
        emit TestEvent(foo.length);
    }
    event TestEvent(bytes32 bar);
}
