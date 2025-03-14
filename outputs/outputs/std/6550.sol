pragma solidity ^0.8.0;


contract Mutate5 {
    mapping (uint => address) x;
    modifier onlyx(uint i) {
        _;
        x[i];
    }
    bool constant isEven;
    function call() public view {
        require(isEven);
        uint count = 0;


        uint v;
        v++;

        count = count + 1;

    }
}
