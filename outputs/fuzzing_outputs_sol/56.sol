pragma solidity ^0.8.0;
contract InitialCaller {
    uint256 x;
    receive() external payable { x = 1; }
}
contract SecondCaller {
    uint256 x;
    receive() external payable { x = 1; x = 2;
    }
}





pragma solidity ^0.8.0;
contract InitialCaller {
    uint256 x;
    receive() external payable { x = 1; }
}
contract FirstCaller {
    uint256 x;
    uint256 y;
    receive() external payable { x = 1; y = 2; }
    fallback() external payable { }
}
contract SecondCaller {
    uint256 x;
    uint256 y;
    receive() external payable { x = 1; y = 2; }
    fallback() external payable { }
}
contract CallerReceivesEtherTest {
    address contractInstance;
    uint256 x;
    uint256 y;
    address contractInstance2;


    transfer(uint256 x, address contractInstance) external;

    receive() external payable { x = 1; x = address(contractInstance); y = 2; }
}
