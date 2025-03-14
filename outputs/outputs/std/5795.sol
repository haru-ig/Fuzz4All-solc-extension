pragma solidity ^0.8.0;
contract Mutated6{
    function mutatedA21115() external returns (uint) {
        assembly {
            a := 5
            b := a
        }
        return a;
    }
}
contract Mutated7{
    function mutatedA21115A215A215() public returns (uint) {
        assembly {
            a := 5
            b := a
            c := 5
            d := a
            e := c
        }
        return a;
    }
}
contract Mutated8{
    uint[5] a;
    function mutatedA5() public returns (uint) {
        a[0] = 5; a[3] = 5;
        uint x;
        assembly {
            x := a
        }
        return x;
    }
}
contract Mutated9{
    uint[5] a;
    function mutatedA5() public payable returns (uint) {
        a[0] = 5; a[3] = 5;
        uint[5] memory x;
        assembly {
            x := a
        }
        return x;
    }
}
contract Mutated10{
    uint[5][4] a;
    function mutatedA54() public returns (uint) {
        a[0][0] = 5; a[0][3] = 5;
        uint[5][4] memory x;
        assembly {
            x := a
        }
        return x;
    }
}
