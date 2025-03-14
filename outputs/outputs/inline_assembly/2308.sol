pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() public {
        a = a / 2;
    }
    function update() public {
        a = a / 2;
    }
}
contract Mutator
{
    bytes public code;
    uint public a;
    constructor(bytes memory _code) public {
        code = _code;
        a = 5;
    }
    modifier only_modifer() {
        require(0==0, "You have to call this method only once.");
        _;
    }

    function mutate() public only_modifer {
        assembly {
            setcode(10, calldataload)
            pop(a)
        }
        a=a+1;
    }
}
contract Mutator
{
    bytes public code;
    string public b;
    constructor(string memory _code) public {
        code = _code;
        b="Hello World!";
    }
    modifier only_modifer() {
        require(0==0, "You have to call this method only once.");
        _;
    }

    function mutate() public only_modifer {
        assembly {
            setcode(10, calldataload)
            pop(a)
        }
        b=b+"!  ";
    }
}
