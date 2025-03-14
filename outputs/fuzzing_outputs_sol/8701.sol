pragma solidity ^0.8.0;
contract Contract {
    function get() public view returns (uint16) {
        2 ** 160;
        address payable x = payable(address(2 ** 160));
        x.transfer(1e12);
        2 ** 128;
    }
}
