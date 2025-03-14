pragma solidity ^0.8.0;
contract SemanticTest7 {
    uint[] arrayA;
    bool found;
    function incrementArrayA(uint i) public {
        bool old = found;
        arrayA[i] = arrayA[i] + 5;
        found = arrayA[i]!= 0;
        if (found &&!old) {
            uint temp;
            for (uint j = i; j > 0; j--) {
                temp = arrayA[j];
                arrayA[j + 1] = temp;
            }
            arrayA[0] = 0;
        }
    }
}
