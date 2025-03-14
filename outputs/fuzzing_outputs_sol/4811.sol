pragma solidity ^0.8.0;
library MutateSemantically {
    function update(bool oldBool, bool newBool) pure public {
        if (newBool) {
            oldBool = true;
        }
    }
}
