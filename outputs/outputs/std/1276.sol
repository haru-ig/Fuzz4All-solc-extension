pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;



 modifier onlyWhenTrue(bool condition) {
    if (condition == true) {
        _;
    }
}

 modifier whenAnyTrue(bool[] memory conditions) {
    for (uint8 i = 0; i < conditions.length; i++) {
        if (conditions[i] == true) {
            _;
        }
    }
}
