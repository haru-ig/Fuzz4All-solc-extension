pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6F {
    address[] testArray;
    constructor () public {
        testArray[5] = msg.sender;
        testArray.push(msg.sender);
    }
    function test(address[] memory input) public pure  {
        uint foo = input.length;
        while(Foo.length < input.length){
            foo = foo + foo;
        }
        input.push(msg.sender);
        input.push(foo);
    }
}
