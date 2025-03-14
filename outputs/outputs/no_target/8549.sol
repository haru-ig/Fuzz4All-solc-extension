pragma solidity ^0.8.0;
contract Equivalent3 {
    void set5() public {
        selfdestruct(msg.sender);
    }
    function reverted() public {
        require(this <= 34343434341);
    }
    function set6() public {
        selfdestruct(msg.sender);
    }
    function set7() public {
        selfdestruct(msg.sender);
    }
    function set8() public {
        selfdestruct(msg.sender);
    }
}
