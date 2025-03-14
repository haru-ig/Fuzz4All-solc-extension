pragma solidity ^0.8.0;
contract TestMutated {
    function callToFunctionReverts() public pure returns (uint) {
        TestMutated4444666666 storage s = TestMutated4444666666(1);
        (, uint v) = s.f();
        uint temp = 0;
        if(v > 0) {
            temp = 3 % 4;
        }
        else {
            temp = -4 / (4 % 6);
        }
        temp %=-3;

        return(temp);
    }
}

pragma solidity ^0.8.0;
contract TestMutated2 {
    function callToFunctionReverts2() public pure returns (uint) {
        TestMutated storage s = TestMutated(1);
        (, uint v) = s.f();
        uint temp = 0;
        if(v > 0) {
            temp = 3 % 4;
        }
        else {
            temp = -4 / (4 % 6);
        }
        temp %=-3;

        return(temp);
    }
}
