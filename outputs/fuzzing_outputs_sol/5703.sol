pragma solidity ^0.8.0;
contract semanticallyequivalent14
{
    uint public x;
    uint public y;
    uint public z;
    fallback function() public view returns(uint)
    {
        x = 1;
        y = 10;
        z = 100;
        return(0);
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent14
{
	uint public x;
	uint public y;
	uint public z;
    function test()public {
		assembly {
			_ = mload(0x40)
			mstore(0x0,0x010)
			mstore(0x10,0x074)
			x := and(0x0,0x1)
			y := or(0x1,0x1)
			z := xor(0x2,(and(0x1,(xor(0xffff,(calldataload(0x10)))))))
		}
        x = 1;
        y = 10;
        z = 100;
    }
}
