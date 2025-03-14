pragma solidity ^0.8.0;

contract Token is IToken {

    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => bool)) private _operatorApprovals;


    mapping(address => mapping(address => bool)) _walletAccess;

    mapping(address => uint256) _walletPrivileges;


    mapping(address => uint256) private _totalReceived;
    mapping(address => uint256) private _totalSent;
    mapping(address => uint256) _walletTokens;





    modifier onlyRole() {
        require(msg.sender == _walletAccess[msg.sender][_msgSender()] && _msgSender() == address(this), "ACCESS_DENIED");
        _;
    }


    modifier onlyOwnRole(address _role) {
        require(msg.sender == _walletAccess[msg.sender][_role] || msg.sender == _walletAccess[address(this)][_role], "ACCESS_DENIED");
        _;
    }


    modifier onlyWalletRole(address _role) {
        require(_walletAccess[address(this)][_role] || _walletAccess[msg.sender][_role] || msg.sender == _walletAccess[address(this)][_role], "ACCESS_DENIED");
        _;
    }



    modifier onlyRoleWalletRole() {
        require((msg.sender == _walletAccess[address(
