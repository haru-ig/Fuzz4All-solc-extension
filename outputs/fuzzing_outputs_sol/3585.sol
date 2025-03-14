pragma solidity ^0.8.0;
contract MutateSemantic7WithCaller19_0 {
    event Evt(uint a);
    function modifyG(uint256 x) public payable {
        uint256 y = ((x * 5) / 10) % 3;
        emit Evt(y + 1);
    }
}
pragma solidity ^0.8.0;
contract MutateSemantic7WithCaller19 {
    event Evt(uint a);
    function modifyG(uint256 x) public payable {
        uint y = ((x * 5) / 10) % 3;
        emit Evt(y + 1);
    }
}
contract MutateSemantic8 {
    event Evt(uint a);
    function modifyH(uint256 x) public {
        uint256 y = x * 5 / 10;
        emit Evt(y + 1);
    }
}
contract MutateSemantic8WithCaller23 {
    event Evt(uint a);
    function modifyH(uint256 x) public payable {
        uint256 y = ((x * 5) / 10);
        emit Evt(y + 1);
    }
}
contract MutateSemantic9 {
    event Evt(uint a);
    function modifyI(uint128 y) public payable {
        uint256 z = y * 5 / 10;
        emit Evt(z + 1);
    }
}
