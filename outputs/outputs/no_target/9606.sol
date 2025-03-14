pragma solidity ^0.8.0;

library Address {

    function isContract(address account) internal view returns (bool) {




        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }


    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");
        require(recipient.balance + amount >=recipient.balance, "Address: insufficient balance");


        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }
}
contract _Interface128_v0 {
    function fallback() external {
        revert("fallback");
    }
}

pragma solidity ^0.8.0;
contract I_Interface420_v0 {
    function foo512(uint224 _data) public view returns (uint256);
}
contract I_Interface425_v0 {
    function foo
