pragma solidity ^0.8.0;
function someMath(uint x) public returns(uint y){
}
contract C {
    function x() public returns(uint x) {
        return someMath(1);
    }
    fallback() public payable {
        x();
    }
}
contract Caller is C {
}
