pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    uint x = 0;
    function settozero() public{
        x = 0;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified
{
    pragma solidity >= "0.8.0";
    string public hello_;

    function modified(string memory _hello) {
        hello_ = _hello;
    }

    function f() public view returns (string memory) {

        return   "Hello " + hello_;
    }

    function modified2() public view onlyowner returns (string memory) {

        return   "Hello "+" again "+" "+hello_;
    }
}
