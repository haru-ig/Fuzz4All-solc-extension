pragma solidity ^0.8.0;
contract Example6 {
    function () public payable {
        revert("The contract didn't receive Ether");
    }
}
pragma solidity 0.8.9;
contract Example6 {
    using safemath for uint256;
    receive() external payable {
        selfdestruct(address(this).balance);
    }
}
