pragma solidity ^0.8.0;
library CheckCondition {
    function check(
        (bool a, bool b) memory a2Check,
        (bool, bool) memory b2Check
    ) public pure returns (bool) {

        if (!a2Check.a &&!b2Check.a) { return true;}
        return false;
    }
}
