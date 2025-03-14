pragma solidity ^0.8.0;
contract MutateSemantic6MutatedCaller {
    event Evt(uint a);
    function modifyC(uint256 x, uint256 y) public payable {
        modifyC(x * 3, y / 5);
        emit Evt(x + y);
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    event Evt(uint a);
    function modifyC2() public {
        modifyC1();
        callC();
        emit Evt(2);
    }
    function modifyC1() public {
        modifyC(1, 2);
    }
    function callC() public payable {
        emit Evt(1);
    }
}
