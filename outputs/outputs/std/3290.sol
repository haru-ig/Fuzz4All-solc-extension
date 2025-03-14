pragma solidity ^0.8.0;
contract ModificationOfStringMultiprecision {
    StringMultiprecision storage sm;
    function setMin(StringMultiprecision memory s) public {
        sm.value = s.value.add(1);
    }
    function setMaxValue(StringMultiprecision memory s) public {
        sm.value = s.value.sub(1);
    }
}
