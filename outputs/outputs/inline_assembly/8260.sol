pragma solidity ^0.8.0;
contract InlineAssembly4{
    bool a;
    constructor(){
        assembly {
                {
                     {
                             a := 1;
                    }
        }
    }
    function test() public pure returns(bool) {
        return a;
    }
    receive() external payable{
        a = false;
    }
}
