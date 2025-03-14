pragma solidity ^0.8.0;
contract Test{


    bool test = true;

    function value() public view returns (bool) {
        return test;
    }


    function non_tru(bool) private pure returns (bool) {
        return false;
    }


    function test2(bool) public pure returns (bool) {
        return non_tru(non_tru(test));
    }
}
