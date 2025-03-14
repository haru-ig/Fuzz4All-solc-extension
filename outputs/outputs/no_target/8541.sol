pragma solidity ^0.8.0;
contract Equivalent3 {
    event Evt(address, uint, uint, uint);
    event Evt2(address, uint, uint, uint);
    function set1(uint a) public {
        uint len = 11;
        assembly { len := len - 2 }
        uint len2 = len * 2;
        assembly { len2 := len2 - 1 }
        emit Evt(
            msg.sender,
            len,
            a + 1,
            len2)
        emit Evt(
            msg.sender,
            a + 1,
            len2,
            len)
        emit Evt2(msg.sender, a + 1, 11, 2);
        emit Evt(msg.sender, a + 2, 12, 22);
        emit Evt(msg.sender, a + 3, 13, 233);
        emit Evt(msg.sender, a + 4, 14, 244);
        emit Evt(msg.sender, a + 5, 15, 25);
        emit Evt2(msg.sender, a + 6, 2203, 2304);
        emit Evt(msg.sender, a + 7, 23, len2);
        emit Evt(msg.sender, a + 8, 22, len - 1);
        emit Evt2(msg.sender, a + 9, 22, 22);
        emit Evt(msg.sender, a + 10, 22, a + 11);
    }
    }
