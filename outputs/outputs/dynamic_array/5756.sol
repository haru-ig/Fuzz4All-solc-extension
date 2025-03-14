pragma solidity ^0.8.0;
contract Test268 {
    function test() public payable {
        P memory myP = P({y : 255});
        P[] memory myPA; myPA.push(myP); myPA[myPA.length-1].x++;
        myPA[myPA.length-1].x--;
        myPA[myPA.length-1].y--;
    }
}
pragma experimental ABIEncoderV2;
contract P {
    uint8 y;
    uint256 x;
}
