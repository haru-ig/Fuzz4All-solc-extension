pragma solidity ^0.8.0;
contract Fallback {

    function fallback() public {}

    function modify(uint256 a) public {
        uint256 b=a+1;
    }

    function modifyPayable(uint256 b) public payable {
        require(msg.value>0);
        b++;
    }
}

pragma solidity ^0.8.0;
contract FallbackWithReceive {

    function fallback() public payable {
        require(msg.value>0);
        bool done=false;
    }

    function callFallback() public payable {
        done=true;
    }
}
