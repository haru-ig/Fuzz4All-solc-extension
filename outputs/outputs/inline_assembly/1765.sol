pragma solidity ^0.8.0;
contract Example{
    uint public x;
    uint public y;

    function () external {
    	assembly {
            x := 0x55
            y := 0x12
        	}
    }

    function update() external {
    	assembly {
    	    x := x + y
            y := x
        	}
    }
}
