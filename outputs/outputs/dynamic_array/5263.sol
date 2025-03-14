pragma solidity ^0.8.0;
contract Test47 {
    enum myEnum { Value1, Value2 }
    function g() public pure returns (myEnum[] memory) {
        myEnum[] memory s = new myEnum[](10);
        s[4] = myEnum(2);
        return s;
    }
}
