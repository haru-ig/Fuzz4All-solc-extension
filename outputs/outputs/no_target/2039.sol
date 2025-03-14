pragma solidity ^0.8.0;
contract Modification2 is Modification1 {
    function Modification2()public {
        a = 2;
        b = "Hello world";
    }
    function Modification2()Modification1(string calldata _b)public {
        a = 3;
        b = _b;
    }
    function Modification2(string calldata _b) public Modification1(_b) {}
}
