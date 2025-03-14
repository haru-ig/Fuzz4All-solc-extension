pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests10 {
    function test(address[] memory input) public pure  {
        address[][] memory foo = input;
        input.push(address(10));
        input[-1] = address(11);
        foo.push(foo);
        foo[-1].push(foo);
    }
}
