pragma solidity ^0.8.0;
contract Mut {
    address[] myArray;
    constructor() {

        myArray = new address[](0);

        for (uint i = 0; i < 50; i++) {
        	myArray.push();
        	}

        myArray[0] = 0x0;

        address[] memory b = new address[](100);

        }




    function doStuff(address[] memory c) external {
        c[0] = address(myArray[899]);
        c.push();
    }


}
