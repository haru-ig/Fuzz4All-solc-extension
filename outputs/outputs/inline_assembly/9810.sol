pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {


    function a() public {
        assembly {
            let _ret := 100 add(1)

            return(add(_ret, 1))
        }
    }
    uint public __result;
    function a() public {
        __result = a();
    }
}
