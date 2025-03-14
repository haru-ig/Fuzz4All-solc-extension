pragma solidity ^0.8.0;
interface MixedContactsExample506Interface2 {
    function anotherOperation4() external;
}
contract MixedContactsExample506 {
    MixedContactsExample506Interface2 public mixedContactsExample506Interface2;

    constructor(MixedContactsExample506Interface2 mixedContactsExample506Interface2_) {
        mixedContactsExample506Interface2 = mixedContactsExample506Interface2_;
    }

    function anotherOperation4() public {
        (bool flag, bytes memory returnData) =
            mixedContactsExample506Interface2.anotherOperation4.call{value: 1 ether}('');
        (bool flag_1, bytes memory returnData_1) =
            mixedContactsExample506Interface2.anotherOperation4.call{value: 1 ether}('');
        (bool flag_2, bytes memory returnData_2) = mixedContactsExample506Interface2.anotherOperation4{value: 1 ether}('');
        (bool flag_3, bytes memory returnData_3) = mixedContactsExample506Interface2.anotherOperation4{value: 1 ether}('');
    }
}
