pragma solidity ^0.8.0;
contract Mutant2Fallback {
    function highLevelCall() receive pure payable internal {}
}
contract Caller {
    constructor () external payable{}
    fallback () external payable {}
    receive () payable external {}
}
