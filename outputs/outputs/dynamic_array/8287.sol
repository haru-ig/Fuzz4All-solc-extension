pragma solidity ^0.8.0;
contract Solidity2 {
    uint public a;
    uint public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function myFunction() public {
        b = (a - 1) + b;
        b = b + 1;
    }
}

address msgSender() external returns (address);

uint8 myUint8;
uint2 myUint256;
uint32 myUint32;
uint512 myUint512;

bool boolValue;
uint128 uin128Value;

constructor () {
	myUint8 = 42;
	myUint256 = 42;
	myUint32 = 42;
	myUint512 = 42;
	boolValue = true;
	uin128Value = 42;
}


}
