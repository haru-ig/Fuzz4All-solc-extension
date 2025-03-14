pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller {
    event Evt(uint a);
    function test() public {
        modifyF();
        emit Evt(5);
    }

    function modifyF() public {
        uint256 x;
        (x, ) = address(this).call{value: 1 ether}("");
        emit Evt(x + 1);
    }
}
