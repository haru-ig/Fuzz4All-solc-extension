pragma solidity ^0.8.0;
contract mutator83 {

    uint z = 2;

    modifier modifier1 {
        z = 20;
        _;
    }

    modifier modifier123 () {
        _;
    }

    function funcMod() external {

        modifier123
        {
        z = 2;
        {
        z = 20;
        }
        z = 30;

    }

    }

    function func() external {

        modifier1
        {
        z = 2;
        z = 20;
        z = 30;
        }

        modifier modifier111()
        {
        z = 20;


    }

    }

}
