pragma solidity ^0.8.0;
contract semanticallyEquiv1{
    uint256 public variable;
    function semanticallyEquivTest(){

        semanticallyEquiv1.contract.semanticallyEquivTest(semanticallyEquiv2.contract.semanticallyEquivTest(uint256 u));
        variable++;
    }
}
contract semanticallyEquiv2{
    constructor() {}
    function semanticallyEquivTest(){
        semanticallyEquiv1.contract.semanticallyEquivTest();
    }
    function semanticallyEquivTest(uint256 u){
    }
}
