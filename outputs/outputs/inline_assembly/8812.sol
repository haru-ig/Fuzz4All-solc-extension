pragma solidity ^0.8.0;
contract Test
{
    int var1;
    mapping(address => mapping(address => uint256)) public payeesWithBalancesOf;
    uint256 next_payee;
    mapping(address => uint256[]) public transactionsMade;

    modifier requireAccountHasBalance (uint value) {
        address addr;
        assembly {
            addr := mload(add(0x20,calldatasize))
            let userHasBalance := sload(addr)
            assert(userHasBalance >= value && userHasBalance < int_max)
        }
        _;
    }
   function makePayee() public requireAccountHasBalance(200000000000)
    {
        next_payee += 1;
        transactionsMade[tx.origin].push(next_payee);
        payeesWithBalancesOf[msg.sender][tx.origin] = payeesWithBalancesOf[msg.sender][tx.origin]+1;
    }
}
