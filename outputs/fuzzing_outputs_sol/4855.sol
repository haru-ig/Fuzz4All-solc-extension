pragma solidity ^0.8.0;
contract Mutator {
    fallback() external payable {}
}
contract Reverter {
    constructor () {
        revert();
    }
}
contract Intermediate {
    receive() external payable {}
}
contract Indirect {
    fallback() external payable {}
    function doSomething() public pure {}
}
contract Mutator_Reverter_Intermediate_Indirect {
    mutator() public {}
    fallback() external payable {}
}
contract Mutator_Reverter_Intermediate {
    mutator() public {}
    fallback() public {}
}
contract Indirect_Reverter_Intermediate {
    fallback() public {}
    function doAnother() external pure {}
}
contract Mutator_Intermediate {
    mutator() public {}
    fallback() public {}
}
contract Indirect_Intermediate {
    fallback() public {}
    function doSomething() public pure {}
}
