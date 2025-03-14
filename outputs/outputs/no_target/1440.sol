pragma solidity ^0.8.0;
contract Semantic0030 {
    contract Semantic003020 {
        function nonModulatedNonStaticLocal() public {
            if (true) {
                return;
            }
            else {
                return;
            }
        }
        function nonModulatedModStaticLocal() public {
            if(false){
                return;
            }
        }
        function nonModulatedStaticLocal() public {
            if(false){
                return;
            }
        }
        function nonMutant() public pure {
            if (true) {
                return;
            }
            else {
                return;
            }
        }
    }
}
