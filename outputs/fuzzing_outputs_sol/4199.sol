pragma solidity ^0.8.0;
contract Example1{
    function mutator() public payable fallback(){
    }
}

pragma solidity ^0.8.0;
contract Example2 is MutatorCaller{
    function mutator () external payable{
        require(false);
    }
}
pragma solidity ^0.8.0;
contract Example3 is MutatorCaller {
    function mutator () payable nonReentrant nonReentrantFallback() {

    }
}
