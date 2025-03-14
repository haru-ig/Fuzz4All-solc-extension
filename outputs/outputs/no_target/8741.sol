pragma solidity ^0.8.0;
contract EquivalentABIv07SemanticallyEquivalentInterface {
    address[] public accounts;
    modifier onlyOneAccount() {
        uint accountCount = accounts.length;
        require (accountCount > 0);
        uint accountPosition = msg.sender;
        uint accountToRemove = accountCount - 1;

        address[2] memory accountList = accounts;
        accounts = accountList;
        mints[accountList[0]] = accountList[1];
        mints[accountList[1]] = accountList[0];
        accounts[accountToRemove] = (address(0));
        require (accountList[0]!= accountList[1]);
        balances[accountList[0]] -= balances[accountList[1]];
        balances[accountList[1]] -= balances[accountList[0]];
        balances[accountList[0]] += balances[accountList[1]];
        accountList = accountList.sub(2);
        _;
    }
    address public addr1;
    uint public balance;
    mapping (address => uint) public balances;
function f() public {
    accounts.push(addr1);
    addr1 = addr1 + 1
