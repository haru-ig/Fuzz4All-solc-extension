pragma solidity ^0.8.0;




contract Test {
    function returnsValue() public pure returns(uint32) {
        return 7;
    }
    uint32[23] public dynArr;
    function doSomething() public {
        dynArr[8] = 23;
    }
    function mutateDynArr() public {
        dynArr[6] := 13;
    }
}
