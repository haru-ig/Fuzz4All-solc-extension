pragma solidity ^0.8.0;
contract Equivalent2_ {
    event Evt(address, uint, uint);
    event Evt2(uint a);

    modifier isPublic {
        emit Evt(msg.sender, 100, 1);
        _;
    }
    function set1(uint a) public payable isPublic {
        emit Evt(msg.sender, a, 1155);
        emit Evt2(a);
        emit Evt(msg.sender, a+1, 22);
        }
    function set2(uint a) public payable isPublic {
        emit Evt(msg.sender, a+1, 22);
        emit Evt(msg.sender, a+2, 33);
        emit Evt(msg.sender, a+3, 44);
        emit Evt(msg.sender, a+4, 55);
    }
    }

pragma solidity ^0.8.0;
contract Reverted3 {
    event Evt(uint, uint, uint);
    event Evt2(uint a);
    uint public a;
    constructor() public {
        a = 10;
    }
    function set3() public payable {
        a = 101;
        emit Evt(a, 1, 1155);
        emit Evt2(a);
        }
    function set4() public payable {
        a = 101;
        emit Evt(a+1, 22, 2);
        emit Evt(a+2, 33, 3);
        emit Evt(a+3, 44, 4);
    }
}
