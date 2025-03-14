pragma solidity ^0.8.0;
contract MutateSemantic6NoCaller {
    event Evt(uint a, uint b);
    function modifyC(uint256 x, uint256 y) public payable {
        emit Evt(x, y + x / 1000);
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic6WithCaller {
    event Evt(uint a);
    function modifyD(uint256 x, uint256 y) public payable {
        uint256 re = x + y;
        emit Evt(x + y);
    }
}
