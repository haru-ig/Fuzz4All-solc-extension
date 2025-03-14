pragma solidity ^0.8.0;
contractmodifierF() {
    function f() public view returns (uint256) {
        uint256 r;
        if (uint256(0)>r)
            revert("errorTest");
        return r;
    }
}
contractA{
    modifierA modA(){
        uint256 r;
        if (uint256(0) > r) {
            revert("errorTest");
        }
        else {

        }
        return r;
    }
    function fA(uint256 input) public view modA returns (address){
        address self;
        uint256 r;
        if (uint256(0) > r) {
            revert("errorTest");
        }
        else {
            self = address(0);
            msg.sender = self;

        }
        return self;
    }
}
contractB is contractA{
    address B;
    modifierB modB(){
        B=address(address(uint256(0)));
        uint256 r;
        if (uint256(0) > r) {
            revert("errorTest");
        }
        return r;
    }
    function fB() public view modB returns(uint256){
        uint256 r;
        if (uint256(0)>r){
            revert("errorTest");
        }
        return r;
    }
}
