pragma solidity ^0.8.0;
contract Semantic0023 {
    address to;
    address from;
    function equal(address a, address b) public pure {
        to = a;
        from = b;
        x = 0;
        while(x == 0) {
            x = 0;
            emit something();
            x = 1;
        };
    }

    event something();
}
