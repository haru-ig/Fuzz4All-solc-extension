pragma solidity ^0.8.0;
contract Test {
    uint public k;
    bytes public value;
    constructor() public {
        k = 5;
        value = "this is my bytes";
    }
    function get() public view returns (uint, uint){
        if (k > 0){
            k = 1;
        }else{
            k = 10;
        }
        return (k, 11);
    }
    function s1() public {
        s2();
    }
    function s2() public {
        bytes memory input;
        input = "input ";
    }
}


pragma solidity 0.8.0;
contract A{
    uint x = 0xf00d;
    function a() public returns(uint a) {
        if (x == 0){
            a = 1;
        }else{
            a = x + 1;
        }
    }
}



pragma solidity 0.8.0;
contract B is A{
}
