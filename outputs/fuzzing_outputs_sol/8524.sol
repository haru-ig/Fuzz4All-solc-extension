pragma solidity ^0.8.0;
contract CallerExample10 {
    function withdraw(uint x) public {
        if (x >= 10){
            uint x1 = x + 2;
            uint x2 = x1 + 3;
            uint z = x1 - x2;


            require(z > 0);
            callBack(x);
        }

        if (x < 6 || x > 13){
            callBack(x);
        }
    }

    function callBack(uint x) internal {
        address payable fallbackAddress = msg.sender;
        fallbackAddress.transfer(address(this).balance);
    }
}
