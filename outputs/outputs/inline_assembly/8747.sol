pragma solidity ^0.8.0;
library Test {
    function value () internal view returns(bool) {
        return true;
    }
}



pragma solidity ^0.8.0;
contract Test {
    function value () public view returns(bool){
        assembly {
