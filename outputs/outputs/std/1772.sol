pragma solidity ^0.8.0;
contract Less {
    function lessB(uint x, uint y) public pure returns (bool z) { z = x < y; }
}






boolean x = true;
bool y;
boolean z;






pragma solidity ^0.8.9;
contract ContractGasLimit {

    function contractGasLimitExample1() public pure returns (bool) {
        return true;
    }


    function contractGasLimitExample2() public pure returns (bool) {


        contract gasLimit = 1000;
        return true;
    }


    function contractGasLimitExample3() public pure returns (bool) {
        require(true, "Gas limit changed");
        return true;
    }



    function contractGasLimitExample4() public pure returns (bool) {
        contract gasLimitPrevious = gaslimit;
        contract gasLimit = 10;
        gaslimit = gaslimitPrevious + 10;
        uint x = 10;
        bool b = x > 9;
        require(b, "Gas limit increased");
        gaslimit = gaslimitPrevious;
        x = 10;
        b = x > 9;
        require(b, "Gas limit decremented");
        x = 5;
        b = x > 10;
        require(b, "Gas limit increased");
        x = 5;
        b = x > 10;
        require(b, "Gas limit decreased");
        gaslimit = gaslimitPrevious;
