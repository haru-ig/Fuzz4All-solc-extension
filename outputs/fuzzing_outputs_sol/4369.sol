pragma solidity ^0.8.0;
contract Mutator {
    uint x = 1;

    function() external pure {
    }
    receive() external payable {
        x += 2;
    }
    function getX() public view returns(uint){
        return x;
    }
}

pragma solidity ^0.8.0;
contract ReceiveError {
    function receive() external payable {}
    function getX() public view returns(uint){
        return x;
    }
}

pragma solidity ^0.8.0;
contract Receive2 {
    uint x;
    receive() external payable {}
    function getX() public view returns(uint){
        return x;
    }
}
