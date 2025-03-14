pragma solidity ^0.8.0;
contract A {
    struct S {
        int12 myInt;
    }
    library MyLib {
        function myFunc() public view returns (uint) {
            S memory s = S(0.2);
            return s.myInt;
        }
    }
    function f() public pure {
        _;

        int memory a = MyLib.myFunc();
    }
}
