pragma solidity ^0.8.0;
contract A {
    function f(uint x) external view returns (uint){
        uint sum = 0;
        for(uint i = 0;i<x; i++){
            sum += 1;
        }
        return sum;
    }
    function g() public returns (uint){
        x = f(0);
        uint z = delegateCall(address(this), 0x0918);

        uint t = delegateCall(address(this), 0x09189A117);

        for(uint i = 0;i<g; i++){

        }
        return x + z + t;
    }
}
