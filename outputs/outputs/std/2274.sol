pragma solidity ^0.8.0;
interface IERC20 {
    functionTransfer(
        address _to,
        uint256 _value
    ) external returns (bool success);

    function allowance(address _owner, address _spender)
        external
        view
        returns (uint256 remaining);
}
