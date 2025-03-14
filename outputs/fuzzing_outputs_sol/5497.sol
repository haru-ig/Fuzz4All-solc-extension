pragma solidity ^0.8.0;




contract CallerContract8642
{
    uint8 myUint1;
    function callme10526() public
        view returns(uint16 myUint2)
    {
        assembly {
            mstore(0x0, myUint1)
        }
        return 1;
    }
    uint8 private myUint112 = 3;
    function payablecallme12651() public payable
        {
            myUint112 = 4 ;

            if (msg.value==1){
                revert(0, 1);
            }
        assembly {
            mstore(0x0, myUint112)
        }
    }
}
