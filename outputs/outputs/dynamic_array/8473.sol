pragma solidity ^0.8.0;
contract mutantSolidity3135164723 {
    uint internal a = 480;
    function mutantTest() payable {
        uint b;
        b = (b = 1000);
        require(b == 1000, 'This is not a test case');
        b = (b += 1);
        require(b == 1, 'This is not a test case');
    }
}
