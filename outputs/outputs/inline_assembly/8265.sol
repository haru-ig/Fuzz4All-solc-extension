pragma solidity ^0.8.0;
contract InlineAssembly4{

    uint256 x;


    uint y;
    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }


    function add1() public  returns (uint){
        x = a + b;
        return x;
    }


    function mul1() public  returns (uint){
        y = a + b *c;
        return y;
    }


    function test() public returns(bool){
        assembly {
            x := add(a,b)
            y := add(a,c)
        }
       return a == b && b == c;
    }


    function runFunction() public returns(uint, uint, uint){
         return add1(), mul1(), test();
    }
}
