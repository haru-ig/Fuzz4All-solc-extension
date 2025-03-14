pragma solidity ^0.8.0;
contract D {
    D d;

    uint[] internal data2;
    function g() public {
        d.d.data2.push(d.data2);
        d.data2.push(d.data2);
        for(uint i = 0; i < d.data2.length; i++){
            d.data2[i] = uint(i);
            d.data2[d.data2.length - 1] = uint(d.data2.length + 1);
        }
    }
}
