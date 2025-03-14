pragma solidity ^0.8.0;
contract C22 {
        modifier g {
                _;
                emit M1(1);
        }
        function c() public payable {
                _;
                emit M1(2);
                if (true) revert();
        }
}
