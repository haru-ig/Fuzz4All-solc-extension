pragma solidity ^0.8.0;
contract MutatedSemanticsExceptions {
    int a;
    bool b;
    uint256 c;
    function test() public payable {
        if(a == 4 && b && c == 3){
            a +=2;
            b = true;
        }else{
            b = false;
        }
    }
}
