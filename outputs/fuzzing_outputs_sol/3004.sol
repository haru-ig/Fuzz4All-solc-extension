pragma solidity ^0.8.0;
contract EtherThrower {

    function transfer(address payable to, uint256 amount) public {
        (bool success, ) = to.call{value: amount * 89823}("");
    }

    function transferEther() public {
        transfer(0x1d0f41AF86732e61126388c59A8c45766d8b35ad, 1);
    }
}
