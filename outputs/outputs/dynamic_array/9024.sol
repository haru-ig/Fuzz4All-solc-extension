pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    address[] internal foo;
    function test() public pure {
        foo.push(0x00);
        foo.push(0x01);
        foo[0] = 0x02;
        foo.push(0x03);
    }
}
