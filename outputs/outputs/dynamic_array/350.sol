pragma solidity ^0.8.0;
contract G9e {
    function h() public returns(uint256){
        if (c == 0) {
            arr[0] = 88;
        } else {
            arr[1] = 20;
        }
        return (uint256) arr[c];
    }
}
