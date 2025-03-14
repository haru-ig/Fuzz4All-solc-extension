pragma solidity ^0.8.0;
interface IGovernorSHIPTOKEN {
    function change(uint256 newRate) external;
    function withdraw(address to, uint256 value) external;
    function governanceToken() external view;
}

interface IERC20 {

    function balanceOf(address account)
        external
        view
        returns (uint256);

    function transfer(address to, uint256 value)
        external
        returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 value)
        external
        returns (bool);
}

pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account)
        external
        view
        returns (uint256);
    function transfer(address to, uint256 value)
        external
        returns (bool);
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);
    function approve(address spender, uint256 value)
        external
        returns (bool);
}
contract VoteableRegistry {
    IERC20 token;
    address voteSender
