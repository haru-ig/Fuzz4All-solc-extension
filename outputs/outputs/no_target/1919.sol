pragma solidity ^0.8.0;
library Wrapper {
    function x() pure public returns (uint) {
        x.value = 8;
        return x;
    }
}
address address;
function x() {
    address a;
    a.value = 8;
}
