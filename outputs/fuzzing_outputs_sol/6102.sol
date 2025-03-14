pragma solidity ^0.8.0;
contract B {
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public returns (address) {
        return admin;
    }
}
contract B {

    function payable adminAddress() public {
        admin.call{value:address(admin).balance}("");
    }
}
