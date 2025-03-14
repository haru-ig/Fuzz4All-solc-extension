pragma solidity ^0.8.0;




contract ReentrancyGuard {




    address public caller;


    uint256 public last_time;


    address public last_contract;


    constructor () {


        caller = msg.sender;
        last_time = block.timestamp + 15;
        last_contract = msg.sender;
    }


    error TypeError() {



        assembly {
            sp_guard_call(msg.data, 0, ptr)
            sp_copy(ptr, returndata)
        }
    }


    error Reentrancy(string memory mstr) {
        revert(mstr);
    }
}
