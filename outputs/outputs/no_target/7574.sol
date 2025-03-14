pragma solidity ^0.8.0;
contract WithRevert {
    function generate()public pure{
        revert();
    }
}
contract WithReturn {
    function generate()public pure returns (uint32){
        return 100;
    }
}
contract WithEmptyReturn {
    function generate()public pure returns (uint32) {}
}
contract WithMultipleReturns {
    function generate()public pure returns (address, uint32, uint32) {
        return (address(6), 0, 110);
    }
}
contract ContractWithMultipleModifiers {
    function generate()public view returns(address){
        return address(100);
    }
    modifier hasA(){
        return true;
    }
    modifier hasB(){
        return false;
    }
    modifier hasC() view returns(bool){
        return true;
    }
    modifier hasD() view returns(bool){
        return false;
    }
    modifier notHidden() view returns(bool){
        return true;
    }
}
