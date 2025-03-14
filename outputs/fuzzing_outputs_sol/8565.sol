pragma solidity ^0.8.0;
contract CallerExample20 {
    event ReceiveEth(uint Ether);
    function subtract(uint x, uint y) public pure returns (uint z) {
        if(y == 0){
            revert();
        }
        return x / y;
    }
    function () external payable {
        ReceiveEth(msg.value);
    }
}
