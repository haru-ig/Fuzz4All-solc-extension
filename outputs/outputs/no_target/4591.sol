pragma solidity ^0.8.0;
contract C{
    function f_378() public{
        uint160 a;
        uint160 b;
        assembly {
            a := 0x1237896573ee899

            let x := 0xFFFFFFFD

            a := a / b
            a := a * b
            a := a % b
            a := a + b
            a := a - b
            a := a << b
            a := a >> b
            a := a > b
            a := a  < b
            a := a >= b
            a := a <= b
            a := a == b
            a := a!= b
        }
    }
}
