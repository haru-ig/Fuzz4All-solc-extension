pragma solidity ^0.8.0;
contract Incrementer {
    uint _counter;
    modifier noZero() {
        require(_counter!= 0, "zero");
        _;
    }
    pure modifier noZero(int _i) {
        uint i;
        int ii = _i;
        if (ii!= 0) {
            for (i = 0; i < ii; i++) {
                _;
            }
        } else {
            _;
        }
    }




    pure modifier noZero(uint _c) {
        uint c;
        c = _c;
        if (c!= 0) {
            for (uint i = 0; i < c; i++) {
                _;
            }
        } else {
            _;
        }
    }











    function increment() pure noZero public {
        _counter++;
    }
}
