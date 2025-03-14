pragma solidity ^0.8.0;
contract Mutators10 {
    address payable X;
    mapping (address => uint) R;
    mapping (uint => mapping (address => uint)) P;
    function decrement() external returns (uint) {
        uint X;
        if(P[R[X]][msg.sender]>0){

            X = P[R[X]][msg.sender]--;
        }
        return X;
    }
}
