pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function get() public view returns (uint, uint){
        if (k == 5) {
            return (k, 0);
        } else {
            return (0, 0);
        }
    }
    function f() public view returns (uint, uint){
        return (0, k);
    }
}
contract Test2 {
    uint public k;

    constructor() public {
        k = 5;
    }
    function test(uint x) public view returns (uint){

        uint a = x + k + x;

        if(a>0){
            if(a==1){
                return x + k;
            } if(a>-1){
                return 2*x+k;
            }
        }
        return (1/(k+1));
    }
}
