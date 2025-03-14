pragma solidity ^0.8.0;
contract Equivalent {
uint256 x;
uint256 y;
address a;
constructor() public {
    x = 3;
    y = 4;
    a = msg.sender;
}
function mutate(uint256 _h,uint256 _i,uint256 _j) public{
    x = x+1;
    y = y+40;
    a = a+3;
}
function printX() public view returns(uint256) {
    return x;
}
function printY() public view returns(address) {
    return a;
}
}

pragma solidity ^0.8.0;
contract TestContract {
address test = new Equivalent();
uint256 x;
uint256 y;
uint256 z;
constructor() public {
    x = 2;
    y = 3;
    z = test.printY();
}
function testEvo () public {
    test.mutate(1,1,2);
    x = 3;
    y = y+2;
    z = y;
}
}

pragma solidity ^0.8.0;
contract TestContract {
address test = new Equivalent();
uint256 x;
uint256 y;
uint256 z;
constructor() public {
    x = 5;
    y = test.printX();
    z = x+y;
}
function testEvo (uint256 _newX) public
{
    test.mutate(_newX,x,3);
    x = x+2;
    y = y+40;
    z = 5;
}
}
