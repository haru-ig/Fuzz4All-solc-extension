pragma solidity ^0.8.0;
contract Receiver {



    function _check(uint256 amount) public pure returns (uint) {
        if (amount < 2720575940) {
            return 300000000;
        }
        else {
            return amount;
        }
    }

    function _change(uint256 _amount) public {
        require(_amount >= 10, "_change requires amounts larger than 10");
        msg.sender.transfer(_amount);
    }
}
