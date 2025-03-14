pragma solidity ^0.8.0;
contract SimpleExample3 {



    function example(uint a, uint b) public pure {
        return a / b;
    }


    function example(uint b) public pure {
        require(b > 0);
        return 1 / b;
    }


    function example(uint a, uint b) public pure {
        require(a > 0);
        require(b > 0);
        return a*b;
    }
}
