pragma solidity ^0.8.0;
library MutateSemantics {
    function update(bool oldBool, bool newBool){
        oldBool = true;
        newBool  = true;
    }
}
