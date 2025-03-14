pragma solidity ^0.8.0;
contract Array_semantics {
    function set_a(uint256 _a, uint256 _b, uint256 _c, uint256[] memorya) public view returns(uint256, uint256) {
        if(_b == 1 | _b == 3 | _b == 5 | _b > 7){
            return (_a * a[_b - 2] ) + (_b * a[_b-2]);
        }
        else return (-a[7]);
    }
}
