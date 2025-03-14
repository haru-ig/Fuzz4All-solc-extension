pragma solidity ^0.8.0;
contract CallError2 {
    fallback() external {}
    receive() external payable{}
    fallback() external pure{}
}
contract Mutator2 {
    constructor(){}
    fallback() external pure{
        require(false);
    }
    receive() external payable{}
}
contract Caller {
    fallback() external payable{
        require(msg.value > 1 ether);
    }
    fallback() external pure{
        emit(msg.data);
    }
    receive() external payable{}
}
