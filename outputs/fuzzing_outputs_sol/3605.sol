pragma solidity ^0.8.0;
contract MutateSemantic7Caller {
    event Evt(address a);

    function modifyA(bytes32 x, bytes32 y) public {
        emit Evt(keccak256(abi.encodePacked("contract A, ", x, " ", y)));
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic9Caller {
    event Evt(uint v);

    function modifyC(uint x, uint y) public payable {
        emit Evt(x + y);
    }
}
