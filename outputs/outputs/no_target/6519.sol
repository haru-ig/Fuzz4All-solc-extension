pragma solidity ^0.8.0;
contract myContract {
    function f(uint a) public returns(uint,uint){
       uint x[2] = [a, 36];
        (uint x1,) = f(36);
    }

    function f(string calldata) public returns(uint,uint){
        uint(uint256 x1, uint256 x2) = f(3);
    }
    uint x[2] = [36, 36];
     (uint x1,) = f(36)
    }
}
contract myEthereumContract {
    function f(uint a) public returns(uint,uint){
       uint x[2] = [a, 126];
        (uint x1,) = f(36);
    }
}
