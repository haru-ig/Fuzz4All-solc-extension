pragma solidity ^0.8.0;
contract Contract {
    fallback (uint amount) public payable {
        withdrawEther(msg.value);
        IERC20(address(this)).transfer(receiver, msg.value);
    }
}

pragma solidity ^0.8.0;
interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
}
