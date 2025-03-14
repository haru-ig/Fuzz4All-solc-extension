pragma solidity ^0.8.0;
contract Caller{
    Example public example;
    constructor (address ex) public {
        example = Example(ex);
    }
    function callIsValid() public {
        require(Example.isValid().isValid());
    }
}
