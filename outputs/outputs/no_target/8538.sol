pragma solidity ^0.8.0;
contract Equivalent5a {
    function set2(uint a) public payable {

        emit Evt(msg.sender, a, 1155 + 1);
    }
    }

pragma solidity ^0.8.0;
contract Equivalent5b {
    mapping (address=>uint256) aMap;
    function set2(uint a) public payable{

        emit Evt(msg.sender, a, aMap[msg.sender]) - 684;
        aMap[msg.sender] += 34;
        emit Evt(msg.sender, a, aMap[msg.sender]);
    }
    }
