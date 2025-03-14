pragma solidity ^0.8.0;
contract G9d {
    uint32[2] private arr;
    address private c;
    address public a;
    function g() public returns(uint32[2]){
        if (a == c) {
            a = address(new G9d());
            c.functionTo().value(1).transferFrom_with_data(address(new G9d()), a, new bytes(1));
            return arr[1];
        }
        return arr;
    }
}
