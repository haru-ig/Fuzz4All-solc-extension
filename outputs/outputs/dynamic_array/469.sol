pragma solidity ^0.8.0;
contract test9
{
    address x;
    bytes[] public myArray;
    function test8() public {
        x = address(myArray);
        bytes memory b = new bytes(100);
        bytes memory bb = new bytes(100);
        bytes memory c = new bytes(100);
        memory m = new bytes(100);
        c = m;
        c = bb;
        c = bb;
        c = b;
        c[128] = 12;
        require(c[128] == 12, "c128");
        bytes memory bd = myArray;
        require(bd[128] == 12, "bd128");
        bd = new bytes(200);
        require(bd[128] == 12, "bd128");
        myArray = new bytes(200);
        require(myArray[1] ==0, "myArray1");
        myArray[1] = 12;
        require(myArray[1] == 12, "myArray2");
        x.transfer(abi.encode(x, myArray));
        require(myArray[1]!=0, "myArray1 transferTo");
    }
}
