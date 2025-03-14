pragma solidity ^0.8.0;
contract C {
    uint constant value = 10;
    fallback() external payable {
        assembly {
            counter := counter + 1


            counter := counter + value


            counter := counter - 1
            counter := counter + counter
            counter := counter - 1

        }
    }
}
