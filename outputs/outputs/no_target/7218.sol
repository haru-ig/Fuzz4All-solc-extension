pragma solidity ^0.8.0;
contract ModifiedMCB
{
    uint internal mcbx;
    uint internal mcby;
    uint constant increment = 200;
    function ModifiedMCB() public {
    }
    function setMCB() public{
        setMCB0();
        setMCB1();
        setMCB2();
    }
    function setMCB0() public{
        mcbx = 15;
        mcby = 180;
    }
    function setMCB1() public{
        mcbx = 19;
        mcby = 300;
    }
    function setMCB2() public{
        mcbx = mcbx + increment;
        checkMCB2();
    }
    function checkMCB2() public{
        require(mcby <= mcbx, "MCB1");
    }
}
