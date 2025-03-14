pragma solidity ^0.8.0;
contract ArrayModificationExample
{
    function initData() public
    {
        bool[] memory bTrue = new bool[](3);
        bool[] memory bFalse = new bool[](6);
        bool[] memory new = new bool[](4);
        new[1] = bTrue[1];
        new[4] = bFalse[5];

        new[0][2]=true;
        bTrue = new bool[](2);
        bTrue[0]=new[1];
        bTrue[1]=new[3];
        bTrue = new[3];
        bTrue[0]=0x1234;
        bTrue[1]=0xff00;





        if (bTrue.length!= 3) {
            throw;
        }

        new[0][0] = new[0][1];
        new[2][0] = new[0][1];





        new[0][0] = new[0][1];
        new[1][1] = new[1][1];
        if (new.length!= 4) {
            throw;
        }
    }
    bool public bTrue1;
    bool public bTrue2;
    bool public bTrue3;
    bool public bTrue4;
    bool public bFalse1;
    bool public bFalse2;
    bool public bFalse3;
    bool public bFalse4;
    uint public bTrue1Size;
    uint public bTrue2Size;
    uint public bTrue3Size;
    uint public bTrue4Size;
    uint public bFalse1Size;
    uint public bFalse2Size;
    uint public bFalse3Size;
    uint public bFalse4Size;

    function updateArray() public {
        bTrue1 = true;
        bTrue2=true;
        bTrue3=true;
        bTrue4=true;
        bFalse1=false;
        bFalse2=false;
        bFalse3=false;
        bFalse4=false;
        bTrue1Size=1;
        bTrue2Size=1;
        bTrue3Size=1;
        bTrue4Size=1;
        bFalse1Size=1
