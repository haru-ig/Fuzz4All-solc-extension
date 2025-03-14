pragma solidity ^0.8.0;
contract A {
    function f(uint[2] memory data, uint f(uint[2] memory data)) public {}
}


pragma solidity ^0.8.*;
contract Caller {
    uint private amount = 1000000;
    address internal receiving;



    function() external payable {
        receiving = msg.sender;
    }

    function returnEther() public {
        if (receiving!= address(0)) {


            assert(0);
        }

        receiving.call{value: amount}("");

    }
}
