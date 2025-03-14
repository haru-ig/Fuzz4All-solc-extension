pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import './MutateProgram.sol';


contract HelloWorld {

    function version() public returns(string memory) {
        return 'Hello World - deployed from '
            ^ now;
    }

    function test() public {

    }
}
