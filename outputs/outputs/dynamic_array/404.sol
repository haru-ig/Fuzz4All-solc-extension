pragma solidity ^0.8.0;
contract test2
{
     uint8[3]  public myArray = [0,0,0];

     uint8[512]  public constant myArray2 = [0,0,0,0,0];

     uint8[100]  public constant myArray3 = [0,0,0,0,0,0,0];

     uint8[0]   public readonly arrayWithZero = [0];

     mapping (uint256 => uint256)  public constant map1;

     function setValues() public
     {
       delete myArray;
       myArray = [0,0,0];
       myArray[1] = 0;

       arrayWithZero[0] = 0;
       arrayWithZero[1] = 0;
       arrayWithZero[2] = 0;
       arrayWithZero[3] = 0;
       arrayWithZero[4] = 0;

       map1[0] = 0;
       map1[1] = 0;
       map1[3] = 0;
       map1[10000] = 0;
     }
}

/*
The output is different for the first and second example.
In the first case, 0 is written in each place in contract storage. In the second case, empty arrays of 0 are written. If it is read, it becomes 480100 instead, as follows:

pragma solidity ^0.8.0;
contract test2
{
	bool  public constant boolVar = false;

	uint8[3]  public constant myArray = [0,0,0];
	uint8[10] public constant myArray2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
	uint8[3]  public var arrayWithZero = [0,0,0];

	uint256 map1;
	uint8  x;

	function setValues() public
	{
		x = 0;
		x = 1;
		x = 2;
		x = 3;
		myArray[1] = x;
		myArray[4] = x;

		arrayWithZero[0] = x;
		arrayWithZero[1] = x;
		arrayWithZero[2] = x;
		arrayWithZero[3] = x;
		arrayWithZero[4] = x;

		map1 = x;
		map1 = 0;
		map1 = 1;
		map1 = 2;
		map1 =
