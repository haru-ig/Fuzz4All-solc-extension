pragma solidity ^0.8.0;
contract Mutated{
    function _data(uint k) public pure {
        if(k==1){
        return address(0xD9F4e8d60967C7E044fEE2F061bF15521A017E4A);
        }
    else {
        _data(2);
    }
}
